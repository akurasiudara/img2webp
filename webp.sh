#!/usr/bin/env bash

# Version and help
VERSION="1.2.0"
SCRIPT_NAME="img2webp"

show_help() {
    cat << EOF
$SCRIPT_NAME v$VERSION - Simple WebP Image Converter

USAGE:
    $SCRIPT_NAME [OPTIONS] [INPUT_FILE] [QUALITY]

DESCRIPTION:
    Convert JPG, JPEG, and PNG images to WebP format.
    
    Single file mode: Converts one specific image file
    Batch mode:       Converts all images in current directory

OPTIONS:
    -h, --help       Show this help message
    -v, --version    Show version information

ARGUMENTS:
    INPUT_FILE       Path to image file (optional for batch mode)
    QUALITY          WebP quality 0-100 (default: 80)

EXAMPLES:
    # Convert single file with default quality (80)
    $SCRIPT_NAME photo.jpg
    
    # Convert single file with custom quality
    $SCRIPT_NAME photo.jpg 90
    
    # Batch convert all images in current directory
    $SCRIPT_NAME
    
    # Show help
    $SCRIPT_NAME --help

OUTPUT:
    Files will be saved to 'output/' directory as:
    - Single: image_001.webp
    - Batch:  image_001.webp, image_002.webp, etc.

REQUIREMENTS:
    - cwebp must be installed
    - Ubuntu/Debian: sudo apt install webp
    - macOS: brew install webp
    - Windows: choco install webp

EOF
}

show_version() {
    echo "$SCRIPT_NAME version $VERSION"
}

# Handle options
case "$1" in
    -h|--help)
        show_help
        exit 0
        ;;
    -v|--version)
        show_version
        exit 0
        ;;
esac

# Default quality
QUALITY=${2:-80}
INPUT_FILE="$1"

# Check if cwebp is available
CWEBP_CMD="cwebp"

# Use bundled cwebp-bin if available (from Node.js wrapper)
if [[ -n "$CWEBP_PATH" && -f "$CWEBP_PATH" ]]; then
    CWEBP_CMD="$CWEBP_PATH"
elif ! command -v cwebp >/dev/null 2>&1; then
    echo "Error: cwebp is not available!"
    echo "This package should include cwebp binary automatically."
    echo "If this error persists, please install cwebp manually:"
    echo "  Ubuntu/Debian: sudo apt install webp"
    echo "  macOS: brew install webp"
    echo "  Windows: choco install webp"
    exit 1
fi

# Create output folder
mkdir -p output

# Convert function
convert_file() {
    local img="$1"
    local output="$2"

    if [[ ! -f "$img" ]]; then
        echo "File not found: $img"
        return
    fi

    if $CWEBP_CMD -q "$QUALITY" "$img" -o "$output" >/dev/null 2>&1; then
        echo "Converted: $img -> $output (quality=$QUALITY)"
    else
        echo "Failed to convert: $img"
    fi
}

# Single file mode
if [[ -n "$INPUT_FILE" && -f "$INPUT_FILE" ]]; then
    convert_file "$INPUT_FILE" "output/image_001.webp"
    exit 0
fi

# Batch mode (alphabetical order, space-safe)
count=1
while IFS= read -r -d '' img; do
    filename=$(printf "output/image_%03d.webp" "$count")
    convert_file "$img" "$filename"
    count=$((count + 1))
done < <(find . -maxdepth 1 -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) -print0 | sort -z)

echo "Conversion completed!"