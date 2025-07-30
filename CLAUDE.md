# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Hugo static site for Herz-Lungen-Praxis Cloppenburg, a medical practice specializing in cardiology, pneumology, allergology, and sleep medicine. The site uses the "landkit" theme and is configured for German language (de-DE).

## Development Commands

### Local Development
```bash
hugo server
```

### Network Development (accessible from local network)
```bash
hugo server --bind 192.168.55.181 --baseURL http://192.168.55.181 --port 8080
```

### Image Optimization
```bash
cwebp -q 80 input.jpg -o output.webp
```

## Architecture

### Content Structure
- `content/` - Site content organized by sections:
  - `leistungen/` - Medical services (kardiologie, pneumologie, allergologie, schlafmedizin)
  - `ueber-uns/` - About section (team, praxis, karriere)
  - `informationen/` - Patient information (kontakt, faq)
- `themes/landkit/` - Custom theme with layouts, partials, and assets
- `static/` - Static files (favicon, verification files)
- `public/` - Generated site output (not committed)

### Theme Architecture
The landkit theme includes:
- Custom layouts for different content types
- Partials for reusable components (navbar, footer, modals)
- Shortcodes for content elements (cards, sections, icons)
- Custom CSS and JavaScript bundles

### Configuration
- `hugo.toml` - Main Hugo configuration with menus, contact info, and site parameters
- Theme uses German language with custom navigation structure
- Minification enabled for production builds
- Contact information and business details configured in params

### Content Management
- Content is primarily HTML with some Markdown files
- Custom frontmatter and data files (e.g., `leistungen.yaml`)
- Image assets organized by content section
- WebP format used for optimized images

## Domain & Deployment
- Production domain: www.herzlungenpraxis-cloppenburg.de
- DNS managed via kasserver.com