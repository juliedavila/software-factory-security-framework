#!/bin/bash
# Validation script to check framework consistency
# Run automatically in CI/CD pipeline

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

echo "🔍 Validating SF² Framework Consistency..."

# Color codes for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

ERRORS=0
WARNINGS=0

# Function to report error
error() {
    echo -e "${RED}❌ ERROR: $1${NC}"
    ERRORS=$((ERRORS + 1))
}

# Function to report warning
warning() {
    echo -e "${YELLOW}⚠️  WARNING: $1${NC}"
    WARNINGS=$((WARNINGS + 1))
}

# Function to report success
success() {
    echo -e "${GREEN}✅ $1${NC}"
}

echo ""
echo "📋 Checking version consistency..."

# Extract versions from different files
VERSION_REFS=$(grep -h "Version.*0\.[0-9]*\.[0-9]*" docs/appendix/references.md | sed 's/.*Version.*: //' || echo "NOT_FOUND")
VERSION_INDEX=$(grep "^version:" docs/index.md | sed 's/version: //' || echo "NOT_FOUND")
VERSION_JSON=$(grep '"version"' docs/framework.json | head -1 | sed 's/.*"version": "\(.*\)".*/\1/' || echo "NOT_FOUND")

# Check if all versions match
if [ "$VERSION_REFS" = "$VERSION_INDEX" ] && [ "$VERSION_INDEX" = "$VERSION_JSON" ]; then
    success "Version consistent across all files: $VERSION_REFS"
else
    error "Version mismatch detected:"
    echo "  references.md: $VERSION_REFS"
    echo "  index.md: $VERSION_INDEX"
    echo "  framework.json: $VERSION_JSON"
fi

echo ""
echo "📁 Checking documentation structure..."

# Count markdown files in each section
FOUNDATION_COUNT=$(find docs/01-foundation -name "*.md" 2>/dev/null | wc -l)
STEWARDSHIP_COUNT=$(find docs/02-stewardship -name "*.md" 2>/dev/null | wc -l)
POSITIONING_COUNT=$(find docs/03-positioning -name "*.md" 2>/dev/null | wc -l)
INVESTMENT_COUNT=$(find docs/04-investment -name "*.md" 2>/dev/null | wc -l)
CONTEXT_COUNT=$(find docs/05-context -name "*.md" 2>/dev/null | wc -l)
IMPLEMENTATION_COUNT=$(find docs/06-implementation -name "*.md" 2>/dev/null | wc -l)
RELATIONSHIPS_COUNT=$(find docs/07-relationships -name "*.md" 2>/dev/null | wc -l)
AI_INTEGRATION_COUNT=$(find docs/09-ai-integration -name "*.md" 2>/dev/null | wc -l)

# Validate expected file counts (update these when structure changes)
EXPECTED_STEWARDSHIP=6  # overview + 5 areas
EXPECTED_IMPLEMENTATION=4  # 4 quadrants
EXPECTED_RELATIONSHIPS=4  # 4 frameworks
EXPECTED_AI=4  # overview + 3 tools

if [ "$STEWARDSHIP_COUNT" -ne "$EXPECTED_STEWARDSHIP" ]; then
    warning "Expected $EXPECTED_STEWARDSHIP stewardship files, found $STEWARDSHIP_COUNT"
fi

if [ "$IMPLEMENTATION_COUNT" -ne "$EXPECTED_IMPLEMENTATION" ]; then
    warning "Expected $EXPECTED_IMPLEMENTATION implementation files, found $IMPLEMENTATION_COUNT"
fi

if [ "$RELATIONSHIPS_COUNT" -ne "$EXPECTED_RELATIONSHIPS" ]; then
    warning "Expected $EXPECTED_RELATIONSHIPS framework relationship files, found $RELATIONSHIPS_COUNT"
fi

if [ "$AI_INTEGRATION_COUNT" -ne "$EXPECTED_AI" ]; then
    warning "Expected $EXPECTED_AI AI integration files, found $AI_INTEGRATION_COUNT"
fi

success "Documentation structure validated"

echo ""
echo "🔗 Checking critical cross-references..."

# Check that Supply Chain is consistently referenced as #1
SUPPLY_CHAIN_REFS=$(grep -r "Supply Chain.*#1" docs/ | wc -l)
if [ "$SUPPLY_CHAIN_REFS" -lt 5 ]; then
    warning "Supply Chain #1 priority may not be consistently referenced (found $SUPPLY_CHAIN_REFS references)"
fi

# Check for 2017 adversary evolution context with Supply Chain
ADVERSARY_2017_REFS=$(grep -r "2017.*adversary\|adversary.*2017" docs/ | wc -l)
if [ "$ADVERSARY_2017_REFS" -lt 3 ]; then
    warning "2017 adversary evolution context may be missing (found $ADVERSARY_2017_REFS references)"
fi

success "Cross-references validated"

echo ""
echo "📝 Checking for common terminology issues..."

# Check for terms that should be avoided
SECURITY_MATURITY=$(grep -r "security maturity" docs/ --include="*.md" | grep -v "operational readiness" | wc -l)
if [ "$SECURITY_MATURITY" -gt 0 ]; then
    warning "Found $SECURITY_MATURITY instances of 'security maturity' (should use 'operational readiness')"
fi

BEST_PRACTICES=$(grep -r "best practices" docs/ --include="*.md" | grep -v "position-appropriate" | wc -l)
if [ "$BEST_PRACTICES" -gt 0 ]; then
    warning "Found $BEST_PRACTICES instances of 'best practices' (consider 'position-appropriate practices')"
fi

success "Terminology validated"

echo ""
echo "🤖 Checking AI optimization files..."

# Check that AI summary exists and is substantial
if [ ! -f "docs/ai-framework-summary.md" ]; then
    error "AI framework summary missing: docs/ai-framework-summary.md"
elif [ $(wc -l < docs/ai-framework-summary.md) -lt 500 ]; then
    warning "AI framework summary seems too short (less than 500 lines)"
else
    success "AI framework summary exists and is substantial"
fi

# Check that framework.json is valid JSON
if [ -f "docs/framework.json" ]; then
    if python3 -m json.tool docs/framework.json > /dev/null 2>&1; then
        success "framework.json is valid JSON"
    else
        error "framework.json is invalid JSON"
    fi
else
    error "framework.json is missing"
fi

# Check robots.txt exists
if [ ! -f "docs/robots.txt" ]; then
    error "robots.txt is missing"
else
    success "robots.txt exists"
fi

echo ""
echo "🔧 Checking MkDocs configuration..."

# Validate mkdocs.yml syntax
if python3 -c "import yaml; yaml.safe_load(open('mkdocs.yml'))" 2>/dev/null; then
    success "mkdocs.yml is valid YAML"
else
    error "mkdocs.yml has YAML syntax errors"
fi

# Check for sitemap plugin
if grep -q "sitemap:" mkdocs.yml; then
    success "Sitemap plugin configured"
else
    warning "Sitemap plugin not found in mkdocs.yml"
fi

echo ""
echo "="
echo "📊 Validation Summary"
echo "="

if [ $ERRORS -eq 0 ] && [ $WARNINGS -eq 0 ]; then
    echo -e "${GREEN}🎉 All checks passed! Framework is consistent.${NC}"
    exit 0
elif [ $ERRORS -eq 0 ]; then
    echo -e "${YELLOW}⚠️  Validation passed with $WARNINGS warning(s)${NC}"
    echo ""
    echo "Warnings don't block merge but should be reviewed."
    exit 0
else
    echo -e "${RED}❌ Validation failed with $ERRORS error(s) and $WARNINGS warning(s)${NC}"
    echo ""
    echo "Please fix errors before merging. See CLAUDE.md for contribution guidelines."
    exit 1
fi
