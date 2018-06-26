# Gatsby example for Docksal 

Gatsby (https://www.gatsbyjs.org/) example project for Docksal 

## Instructions

`fin init` will install Gatsby's default starter.
Once the site is installed, Docksal will start Gatsby in the development mode, 
allowing you to jump to playing with the installation. 

Edit pages under `docroot/src/pages`. 
Known issue: instant update is not working, you need to hit refresh in the browser.

**Note:** `fin init` always re-creates the project from scratch.

To just (re)start the project stack and development server - use `fin develop`.

## Generating Static Site

Initiate a static build with `fin build-site`.

## Custom commands  

- `fin init` - (re)initialize the project (start fresh, drops `docroot`) 
- `fin develop` - starts Gatsby server again (if the server or project stack was stopped). Does NOT do a reset
- `fin build-site` - Generates production GatsbyJS site build in `./public`
