# Installation Guide

This guide covers various ways to install and use `img2webp`.

## Package Managers

### npm (Node Package Manager)
```bash
# Global installation
npm install -g @akurasiudara/img2webp

# Local installation in project
npm install @akurasiudara/img2webp

# One-time use without installation
npx @akurasiudara/img2webp photo.jpg 85
```

### yarn
```bash
# Global installation
yarn global add @akurasiudara/img2webp

# Local installation in project  
yarn add @akurasiudara/img2webp

# One-time use
yarn dlx @akurasiudara/img2webp photo.jpg 85
```

### pnpm (Performant npm)
```bash
# Global installation
pnpm install -g @akurasiudara/img2webp

# Local installation
pnpm install @akurasiudara/img2webp

# One-time use
pnpm dlx @akurasiudara/img2webp photo.jpg 85
```

### bun (Fast all-in-one toolkit)
```bash
# Global installation
bun install -g @akurasiudara/img2webp

# Local installation
bun install @akurasiudara/img2webp

# One-time use
bunx @akurasiudara/img2webp photo.jpg 85
```

## Direct Installation

### From GitHub
```bash
# npm
npm install -g github:akurasiudara/img2webp

# yarn  
yarn global add github:akurasiudara/img2webp

# pnpm
pnpm install -g github:akurasiudara/img2webp

# bun
bun install -g github:akurasiudara/img2webp
```

### From tarball
```bash
npm install -g https://github.com/akurasiudara/img2webp/archive/main.tar.gz
```

## Verification

After installation, verify it works:

```bash
# Check version
img2webp --version

# Show help
img2webp --help

# Test conversion (if you have a test image)
img2webp test.jpg 85
```

## Troubleshooting

### Command not found
If you get "command not found" error:

```bash
# Check npm global bin directory
npm config get prefix

# Add to PATH (add to ~/.bashrc or ~/.zshrc)
export PATH="$(npm config get prefix)/bin:$PATH"
```

### Permission errors on Linux/macOS
```bash
# Option 1: Use sudo (not recommended)
sudo npm install -g @akurasiudara/img2webp

# Option 2: Configure npm to use different directory
npm config set prefix ~/.local
export PATH="~/.local/bin:$PATH"
```

### Windows specific
- Use Git Bash, WSL, or PowerShell with bash available
- Consider using Windows Package Manager in the future

## Uninstall

```bash
# npm
npm uninstall -g @akurasiudara/img2webp

# yarn
yarn global remove @akurasiudara/img2webp

# pnpm  
pnpm uninstall -g @akurasiudara/img2webp

# bun
bun remove -g @akurasiudara/img2webp
```