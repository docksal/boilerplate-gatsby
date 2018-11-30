# Gatsby boilerplate for Docksal 

[GatsbyJS](https://www.gatsbyjs.org/) boilerplate project for Docksal 

## Instructions

Run `fin init` to install Gatsby's default starter.
Once the site is installed, Docksal will start Gatsby in the development mode, 
allowing you to jump to playing with the installation. Edit pages under `docroot/src/pages`. (Known issue: instant update is not working. You need to hit refresh in the browser.)

**Note:** `fin init` always re-creates the project from scratch. To just (re)start the project development server use `fin develop`.

## Generating Static Site

Create a static build with `fin build-site`.

## Custom commands  list

- `fin init` - (re)initialize the project (start fresh, drops `docroot`) 
- `fin develop` - starts Gatsby server again (if the server or project stack was stopped). Does NOT do a reset.
- `fin build-site` - Generates production GatsbyJS site build in `./public`

## Appendix

### Gatsby 1.x issue with images when working in Docker

When running Gatsby in develop mode, there is an issue with images imported via `import`, because Gatsby appends port to their URLs by default. [See Gatsby issue](https://github.com/gatsbyjs/gatsby/issues/5264#issuecomment-392947839) for the proper workaround.
