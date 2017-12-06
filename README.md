# Gatsby example for Docksal 

Gatsby (https://www.gatsbyjs.org/) example project for Docksal 

## Instructions

Once the site is installed Docksal will start Gatsby in the development mode. 
Allowing you to jump to playing with the installation. 

Simply edit files under `docroot/src/pages` and see instant changes in the browser (refresh the page).

## Static site

If you want to switch to the static site build mode, then open `docksal.env`, change 
`DOCKSAL_ENVIRONMENT="build"` and restart the project ith `fin restart`.

Now you won't see any changes instantly. The project is being rebuilt on `fin restart`.
Gatsby will serve you the static copy of the site stored in the `docroot/public`.
