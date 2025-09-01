#!/bin/bash

# Script to find all Hugo partials and shortcodes in the codebase
# Usage: ./find-partials-shortcodes.sh

echo "==================================="
echo "Hugo Partials and Shortcodes Scanner"  
echo "==================================="
echo ""

# Find all partials usage
echo "📂 PARTIALS FOUND:"
echo "==================="
echo ""

# Search for {{ partial "..." }} patterns - extract partial names
partials_found=$(grep -rho 'partial\s*"[^"]*"' content/ layouts/ themes/ 2>/dev/null | cut -d'"' -f2 | sort -u | grep -v '^$')

if [[ -n "$partials_found" ]]; then
    echo "$partials_found" | while IFS= read -r partial; do
        if [[ -n "$partial" ]]; then
            echo "  • $partial"
            # Show files where this partial is used - grouped on same line
            files=$(grep -rl "partial.*\"$partial\"" content/ layouts/ themes/ 2>/dev/null | tr '\n' ' ')
            if [[ -n "$files" ]]; then
                echo "    Used in: $files"
            fi
            echo ""
        fi
    done
else
    echo "  No partials found"
    echo ""
fi

echo ""
echo "🔧 SHORTCODES FOUND:"
echo "===================="
echo ""

# Search for {{< shortcode >}} patterns
shortcodes_found=$(grep -rho '{{<\s*[a-zA-Z0-9_/-]*' content/ layouts/ themes/ 2>/dev/null | sed 's/{{<\s*//' | sort -u | grep -v '^$')

if [[ -n "$shortcodes_found" ]]; then
    echo "$shortcodes_found" | while IFS= read -r shortcode; do
        if [[ -n "$shortcode" ]]; then
            echo "  • $shortcode"
            # Show files where this shortcode is used - grouped on same line
            files=$(grep -rl "{{<.*$shortcode" content/ layouts/ themes/ 2>/dev/null | tr '\n' ' ')
            if [[ -n "$files" ]]; then
                echo "    Used in: $files"
            fi
            echo ""
        fi
    done
else
    echo "  No shortcodes found"
    echo ""
fi

echo ""
echo "📊 SUMMARY:"
echo "==========="
echo ""

partial_count=$(grep -rho 'partial\s*"[^"]*"' content/ layouts/ themes/ 2>/dev/null | wc -l | tr -d ' ')
shortcode_count=$(grep -rho '{{<\s*[a-zA-Z0-9_/-]*' content/ layouts/ themes/ 2>/dev/null | wc -l | tr -d ' ')

echo "Total partial usages found: $partial_count"
echo "Total shortcode usages found: $shortcode_count"
echo ""

# Check if partials directory exists
if [[ -d "themes/landkit/layouts/partials" ]]; then
    available_partials=$(find themes/landkit/layouts/partials -name "*.html" 2>/dev/null | wc -l | tr -d ' ')
    echo "Available partials in theme: $available_partials"
fi

# Check if shortcodes directory exists  
if [[ -d "themes/landkit/layouts/shortcodes" ]]; then
    available_shortcodes=$(find themes/landkit/layouts/shortcodes -name "*.html" 2>/dev/null | wc -l | tr -d ' ')
    echo "Available shortcodes in theme: $available_shortcodes"
fi

echo ""
echo "✅ Scan complete!"