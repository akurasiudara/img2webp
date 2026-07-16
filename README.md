# img2webp

Simple command-line tool to convert images (JPG, JPEG, PNG) to WebP format.

## Installation

### Via npm
```bash
npm install -g @akurasiudara/img2webp
```

### Via yarn
```bash
yarn global add @akurasiudara/img2webp
```

### Via pnpm
```bash
pnpm install -g @akurasiudara/img2webp
```

### Via bun
```bash
bun install -g @akurasiudara/img2webp
```

### Alternative Installation Methods

#### Direct from GitHub
```bash
# Via npm
npm install -g akurasiudara/img2webp

# Via bun
bun install -g github:akurasiudara/img2webp
```

#### Using npx (No Installation Required)
```bash
npx @akurasiudara/img2webp --help
npx @akurasiudara/img2webp photo.jpg 85
```

#### Using bunx (Bun equivalent of npx)
```bash
bunx @akurasiudara/img2webp --help
bunx @akurasiudara/img2webp photo.jpg 85
```

### Package Manager Compatibility

| Package Manager | Command | Status |
|----------------|---------|---------|
| **npm** | `npm install -g @akurasiudara/img2webp` | ✅ Full support |
| **yarn** | `yarn global add @akurasiudara/img2webp` | ✅ Full support |
| **pnpm** | `pnpm install -g @akurasiudara/img2webp` | ✅ Full support |
| **bun** | `bun install -g @akurasiudara/img2webp` | ✅ Full support |
| **npx** | `npx @akurasiudara/img2webp` | ✅ No installation needed |
| **bunx** | `bunx @akurasiudara/img2webp` | ✅ No installation needed |

### Requirements
- **Node.js** (v12 or higher) or **Bun runtime**
- **bash** (available on Linux/macOS, on Windows use WSL or Git Bash)

## Platform Support

### Operating Systems
- ✅ **Linux** (x64, arm64)
- ✅ **macOS** (Intel, Apple Silicon)  
- ✅ **Windows** (x64) with WSL/Git Bash

### JavaScript Runtimes
- ✅ **Node.js** v12+
- ✅ **Bun** v0.1+

### Package Managers
- ✅ **npm** (Node Package Manager)
- ✅ **yarn** (Yet Another Resource Negotiator)
- ✅ **pnpm** (Performant npm)
- ✅ **bun** (Fast all-in-one toolkit)

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