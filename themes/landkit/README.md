# Landkit

## Layout Structure
section 1: border-bottom border-gray-300
section 2: bg-gradient-light-white
section 3: bg-gray-200
section 4: bg-dark
footer: bg-gray-200

## LANDKIT Integration in Hugo
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
  - // import './pricing';
  - // import './quill';
  - // import './typed';
- In src/scss/theme/_vendor.scss remove the following
  - // @import "vendor/bigpicture";
  - // @import "vendor/choices";
  - // @import "vendor/dropzone";
  - // @import "vendor/highlight";
  - // @import "vendor/quill";
  - // import './tooltip';
- In src/scss/libs.scss
  - // @import 'highlight.js/styles/vs2015.css';
  - // @import 'quill/dist/quill.core.css';
- npm run build
- dist/assets komplett nach static/assets kopieren
- partials/icons komplett nach layouts/partials/icons kopieren
- partials/shapes komplett nach layouts/partials/shapes kopieren

## Information
https://gohugo.io/templates/embedded/#schema
https://getbootstrap.com/docs/5.1/customize/css-variables/
