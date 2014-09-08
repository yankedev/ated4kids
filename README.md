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

We have to allow dirty in order to have rake publishing because the "by_date" and "by_tag" .erb files are currently not compiling (due to local variables not known), 

```                   
rake publish ALLOW_DIRTY=true
```


[ ![Codeship Status for yankedev/ated4kids](https://www.codeship.io/projects/3bcaeec0-183c-0132-b3e5-2e34434bc74d/status)](https://www.codeship.io/projects/34221)
