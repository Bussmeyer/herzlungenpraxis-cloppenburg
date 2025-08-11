# Herz-Lungen-Praxis Cloppenburg Website

A Hugo static site for Herz-Lungen-Praxis Cloppenburg, a medical practice specializing in cardiology, pneumology, allergology, and sleep medicine. Built with the custom "landkit" theme and configured for German language (de-DE).

## Requirements

- [Git](https://git-scm.com/)
- [Hugo Extended](https://gohugo.io/installation/) (latest version recommended)

## Quick Start

### Local Development
```bash
# Standard development server
hugo server

# Alternative with module workspace
HUGO_MODULE_WORKSPACE=hugo.work hugo server
```

### Network Development
Make the site accessible from other devices on your local network:
```bash
hugo server --bind 192.168.55.181 --baseURL http://192.168.55.181 --port 8080
```

## Project Structure

```
├── content/                # Site content
│   ├── leistungen/        # Medical services
│   │   ├── kardiologie/   # Cardiology
│   │   ├── pneumologie/   # Pneumology
│   │   ├── allergologie/  # Allergology
│   │   └── schlafmedizin/ # Sleep medicine
│   ├── ueber-uns/         # About section
│   │   ├── team/          # Team information
│   │   ├── praxis/        # Practice details
│   │   └── karriere/      # Career opportunities
│   └── informationen/     # Patient information
│       ├── kontakt/       # Contact
│       └── faq/           # Frequently asked questions
├── themes/landkit/        # Custom Hugo theme
├── static/                # Static files (verification)
├── hugo.toml             # Hugo configuration
└── public/               # Generated site (not committed)
```

## Content Management

- Content is primarily HTML with some Markdown files
- Custom frontmatter and data files (e.g., `leistungen.yaml`)
- Images organized by content section
- WebP format used for optimized images (recommended width: 1400px)

## Image Optimization

Convert images to WebP format for better performance:
```bash
cwebp -q 80 input.jpg -o output.webp
```

## Deployment

- **Production Domain**: www.herzlungenpraxis-cloppenburg.de
- **DNS Management**: kasserver.com
- Site is automatically deployed via GitHub Pages

## Development Tips

### Debug Content Structure
```html
<pre>{{ debug.Dump .Pages }}</pre>
```

## Useful Resources

- [Hugo Best Practices](https://github.com/spech66/hugo-best-practices)
- [18F Hugo Implementation](https://github.com/18F/18f.gsa.gov/tree/main)
- [Hugo Shortcodes Examples](https://github.com/squidfingers/hugo-shortcodes/tree/main)
