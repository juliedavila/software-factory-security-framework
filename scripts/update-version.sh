#!/bin/bash
# Helper script to update version consistently across all files
# Usage: ./scripts/update-version.sh <new-version>
# Example: ./scripts/update-version.sh 0.4.0

set -e

if [ $# -eq 0 ]; then
    echo "Usage: $0 <version>"
    echo "Example: $0 0.4.0"
    exit 1
fi

NEW_VERSION=$1

# Validate version format (semantic versioning)
if ! [[ $NEW_VERSION =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
    echo "❌ Invalid version format. Use semantic versioning: X.Y.Z"
    exit 1
fi

echo "📝 Updating version to $NEW_VERSION..."

# Update version in docs/appendix/references.md
echo "  → docs/appendix/references.md"
sed -i '' "s/\*\*Version\*\*: [0-9]*\.[0-9]*\.[0-9]*/\*\*Version\*\*: $NEW_VERSION/" docs/appendix/references.md

# Update version in docs/index.md (YAML frontmatter)
echo "  → docs/index.md (frontmatter)"
sed -i '' "s/^version: [0-9]*\.[0-9]*\.[0-9]*/version: $NEW_VERSION/" docs/index.md

# Update version in docs/index.md (About section)
echo "  → docs/index.md (About section)"
sed -i '' "s/\*\*Version:\*\* [0-9]*\.[0-9]*\.[0-9]*/\*\*Version:\*\* $NEW_VERSION/" docs/index.md

# Update version in docs/framework.json
echo "  → docs/framework.json"
sed -i '' "s/\"version\": \"[0-9]*\.[0-9]*\.[0-9]*\"/\"version\": \"$NEW_VERSION\"/" docs/framework.json

echo ""
echo "✅ Version updated to $NEW_VERSION in all files"
echo ""
echo "Next steps:"
echo "1. Review changes: git diff"
echo "2. Run validation: ./scripts/validate-consistency.sh"
echo "3. Commit: git commit -am \"chore: bump version to $NEW_VERSION\""
echo "4. Tag: git tag v$NEW_VERSION && git push origin v$NEW_VERSION"
