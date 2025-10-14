# SF² Logo Assets

This directory contains the branding assets for the Software Factory Security Framework.

## Current Assets

### `logo.svg`
- **Main logo** for website header/navigation
- Shield design with "SF²" lettermark
- Color: Dark blue (#1a3a52)
- Dimensions: 400x450px viewBox
- Usage: Header, navigation, large displays

### `favicon.svg`
- **Simplified icon** for browser tabs and bookmarks
- Optimized for small sizes (16x16, 32x32px)
- Same shield + SF² design, simplified
- Usage: Browser favicon (modern browsers support SVG)

## Design Specifications

**Color Palette:**
- Primary: #1a3a52 (Dark blue/navy - shield background)
- Accent: #ffffff (White - lettermark)
- Matches site theme: Indigo (#3F51B5)

**Typography:**
- "SF²" in bold, geometric sans-serif style
- Superscript "²" properly positioned
- High contrast white on dark blue

**Shape:**
- Pentagon shield (5 sides + pointed bottom)
- Conveys security and protection
- Clean, geometric, modern design

## Additional Formats (Optional)

For maximum browser compatibility, you may want to create additional formats:

### Converting to PNG/ICO

**Using Online Tools:**
1. **SVG to PNG**: https://cloudconvert.com/svg-to-png
   - Upload `favicon.svg`
   - Set sizes: 16x16, 32x32, 180x180 (for apple-touch-icon)

2. **PNG to ICO**: https://cloudconvert.com/png-to-ico
   - Upload 32x32 PNG
   - Creates `favicon.ico` for older browsers

**Using Command Line** (if tools installed):
```bash
# Install dependencies (macOS)
brew install librsvg imagemagick

# Convert favicon.svg to PNG sizes
rsvg-convert -w 16 -h 16 favicon.svg > favicon-16x16.png
rsvg-convert -w 32 -h 32 favicon.svg > favicon-32x32.png
rsvg-convert -w 180 -h 180 favicon.svg > apple-touch-icon.png

# Create ICO from 32x32 PNG
convert favicon-32x32.png favicon.ico
```

**Using Python** (if Pillow + cairosvg installed):
```python
import cairosvg
from PIL import Image

# SVG to PNG
cairosvg.svg2png(url='favicon.svg', write_to='favicon-32x32.png', output_width=32, output_height=32)
cairosvg.svg2png(url='favicon.svg', write_to='apple-touch-icon.png', output_width=180, output_height=180)

# PNG to ICO
img = Image.open('favicon-32x32.png')
img.save('favicon.ico', format='ICO', sizes=[(32, 32)])
```

## Updating mkdocs.yml

Current configuration:
```yaml
theme:
  logo: assets/logo.svg
  favicon: assets/favicon.svg  # SVG works in modern browsers
```

If you create ICO/PNG versions, update to:
```yaml
theme:
  logo: assets/logo.svg
  favicon: assets/favicon.ico  # or favicon-32x32.png
```

## Design Source

Logo concept generated with Midjourney and recreated as clean SVG.

**Original Midjourney prompt** (for reference):
```
minimalist logo icon, abstract security shield with framework grid pattern,
geometric modern, indigo blue, flat design, clean simple, white background,
professional tech branding --style raw --v 6
```

## License

Logo assets are part of the SF² framework and are licensed under:
**Creative Commons Attribution 4.0 International (CC BY 4.0)**

You are free to use, share, and adapt with attribution to Julie Davila and the SF² framework.

---

**Need changes?** Edit the SVG files directly or regenerate using the Midjourney prompt above.
