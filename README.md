# Requirements
- Install Git
- [Install Hugo](https://gohugo.io/installation/)

# Start developing
```
hugo server
```

# LANDKIT Integration in Hugo
- Get Landkit-2.3.0.zip
- Extract it
- npm install
- In src/js/theme.js remove the following
  - // import './bigpicture';
  - // import './choices';
  - // import './countup';
  - // import './dropzone';
  - // import './highlight';
  - // import './isotope';
  - // import './jarallax';
  - // import './map';
  - // import './popover';
  - // import './quill';
  - // import './typed';
- In src/scss/theme/_vendor.scss remove the following
  - // @import "vendor/bigpicture";
  - // @import "vendor/choices";
  - // @import "vendor/dropzone";
  - // @import "vendor/highlight";
  - // @import "vendor/quill";
- In src/scss/libs.scss
  - // @import 'highlight.js/styles/vs2015.css';
  - // @import 'quill/dist/quill.core.css';
- npm run build
- dist/assets komplett nach static/assets kopieren
- partials/icons komplett nach layouts/partials/icons kopieren
- partials/shapes komplett nach layouts/partials/shapes kopieren

# Current Domain
beta.herzlungenpraxis-cloppenburg.de

# Information
https://github.com/spech66/hugo-best-practices
https://github.com/18F/18f.gsa.gov/tree/main
https://getbootstrap.com/docs/5.1/customize/css-variables/