ated4kids website
=================

How to modify the site
---------------

The website has been built using [middleman](http://middlemanapp.com/)

* the base layout for all the pages (currently only the main page) is `source/layouts/main.erb`
* all the multi-language pages must be placed into the `source/localizable/` folder
* all the template fragments must be placed into the `source/partials/` folder and must follow middleman's naming conventions
* all the yaml language files must be placed into the `locales/` folder

How to run locally
------------------
```
$ bundle exec middleman server
```

How to publish the site on github pages
------------------
Option 1: 
Publish you local repo directly on ated4kids.ch:
```                   
rake publish
```

if you have uncommitted code in you local repo use:
```                   
rake publish ALLOW_DIRTY=true
```

Option 2: 

Commit and push your changes on master branch
```                   
$ git commit -m "DESCRIPTION_OF_CHANGE"
$ git push origin
```

Note: if you don't have permissions to push on yankedev origin, please submit a Pull Request (PR)

The master branch will then be built from codeship.io and deployed on gh-pages branch

[ ![Codeship Status for yankedev/ated4kids](https://www.codeship.io/projects/3bcaeec0-183c-0132-b3e5-2e34434bc74d/status)](https://www.codeship.io/projects/34221)
