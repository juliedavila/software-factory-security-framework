#!/usr/bin/env python3
"""
Convert SF² SVG logos to PNG and ICO formats for maximum browser compatibility.
"""

import cairosvg
from PIL import Image
import io

def svg_to_png(svg_path, png_path, width, height):
    """Convert SVG to PNG at specified dimensions."""
    print(f"Converting {svg_path} to {png_path} ({width}x{height}px)...")
    cairosvg.svg2png(
        url=svg_path,
        write_to=png_path,
        output_width=width,
        output_height=height
    )
    print(f"✓ Created {png_path}")

def png_to_ico(png_path, ico_path):
    """Convert PNG to ICO format."""
    print(f"Converting {png_path} to {ico_path}...")
    img = Image.open(png_path)
    img.save(ico_path, format='ICO', sizes=[(32, 32), (16, 16)])
    print(f"✓ Created {ico_path}")

def main():
    print("🎨 Converting SF² logo assets...\n")

    # Favicon conversions
    print("📱 Favicon sizes:")
    svg_to_png('docs/assets/favicon.svg', 'docs/assets/favicon-16x16.png', 16, 16)
    svg_to_png('docs/assets/favicon.svg', 'docs/assets/favicon-32x32.png', 32, 32)

    # Apple Touch Icon
    print("\n🍎 Apple Touch Icon:")
    svg_to_png('docs/assets/favicon.svg', 'docs/assets/apple-touch-icon.png', 180, 180)

    # ICO file (multi-resolution)
    print("\n💾 ICO file:")
    png_to_ico('docs/assets/favicon-32x32.png', 'docs/assets/favicon.ico')

    print("\n✅ All conversions complete!")
    print("\nGenerated files:")
    print("  - favicon-16x16.png (16x16 - smallest favicon)")
    print("  - favicon-32x32.png (32x32 - standard favicon)")
    print("  - favicon.ico (multi-size ICO for older browsers)")
    print("  - apple-touch-icon.png (180x180 - iOS home screen)")

    print("\n📝 Next step: Update mkdocs.yml to use favicon.ico")

if __name__ == '__main__':
    main()
