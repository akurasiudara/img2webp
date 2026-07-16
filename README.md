# img2webp

Simple command-line tool to convert images (JPG, JPEG, PNG) to WebP format.

## Installation

### Via npm (Global)
```bash
npm install -g @akurasiudara/img2webp
```

### Prerequisites
- **cwebp** must be installed on your system
- **bash** (available on Linux/macOS, on Windows use WSL or Git Bash)

#### Install cwebp:

**Ubuntu/Debian:**
```bash
sudo apt update
sudo apt install webp
```

**macOS (Homebrew):**
```bash
brew install webp
```

**Windows:**
- Download from [Google WebP](https://developers.google.com/speed/webp/download)
- Or use [Chocolatey](https://chocolatey.org/): `choco install webp`

## Usage

### Basic Commands
```bash
# Show help
img2webp --help

# Show version
img2webp --version
```

### Convert single file
```bash
img2webp image.jpg 85
```
- `image.jpg` = input file
- `85` = quality (optional, default: 80)

### Batch convert all images in folder
```bash
img2webp
```
Will convert all JPG, JPEG, and PNG files in current directory.

## Output

Converted files will be saved in `output/` folder with names:
- Single file: `image_001.webp`
- Batch: `image_001.webp`, `image_002.webp`, etc.

## Examples

```bash
# Convert single file with quality 90
img2webp photo.jpg 90

# Batch convert with default quality (80)
img2webp

# Convert single file with default quality
img2webp image.png

# Show help and options
img2webp --help
```

## Options

- `-h, --help`    - Show help message
- `-v, --version` - Show version information

## License

MIT