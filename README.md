# Static Pages Demo
> Barebones demo of a themeless Jekyll static site, based on the Jekyll tutorial.

This project is based on following the [Jekyll Step-by-Step tutorial](https://jekyllrb.com/docs/step-by-step/01-setup/). It can can be used as a template or reference for other projects and is also hosted on Github Pages as a site.

The contents of this project shows how to work with [Liquid](https://shopify.github.io/liquid/) templating and [Jekyll](https://jekyllrb.com/) (Ruby gem for generating static sites). The frontmatter (HTML and markdown content) pages are built with the template engine to produce HTML which is served. In this case, the output is kept simple - a few pages, each with a navigation bar that has current page highlighed.

Usually a Jekyll theme is used for static sites so they can have styling, then you override the sections you want. There is no theme here and so there is no Gemfile nor theme set in config.

Some useful links which helped me with learning how to use Jekyll are in this [gist](https://gist.github.com/MichaelCurrin/dfd14bfa74938e40f251bc00445a1627).


## Run on Github Pages

Through setting Github Pages section of the Github repo's settings, this site is available at:

- [michaelcurrin.github.io/static-pages-demo](https://michaelcurrin.github.io/static-pages-demo)

Since this is a project page, the subpath of `static-pages-demo` is automatically set using the repo's name. In order to keep navigation and asset URLs in line with this and prevent errors, the `baseurl` in the [config](_config.yml) file is also set to that subpath.


## Installation

### Clone

Optionally this to your own repo - either fork this repo or click _Use this Template_.

Then clone your repo or this one.

### System and project dependencies

Follow this [Setup and Run](https://github.com/MichaelCurrin/static-sites-generator-resources/blob/master/Jekyll/setup_and_run.md) guide to get `bundle` and `jekyll` installed.


## Run

Build to the `_site` directory and start the web server with this command.

```bash
$ jekyll serve --baseurl ''
```

Open in the browser at:

- http://localhost:4000/


The `baseurl` value is set in the config to make it easy to [run on Github Pages](#run-on-github-pages). But this should be be overridden when running locally as shown above, in order prevent the site from being served on http://localhost:4000/static-pages-demo and giving a 404 on the http://localhost:4000/ path.


When building site content to deploy to production, replace the default `'development'` value with `production` using the following.

```bash
$ JEKYLL_ENV=production bundle exec jekyll build
```

This will affect any checks such as `if jekyll.environment == "production"`

Then copy the contents of `_site` to your server.


## Plugins

The following plugins were recommended as part of the [deploy step](https://jekyllrb.com/docs/step-by-step/10-deployment/) of the Jekyll tutorial tutorial and so are used in this project in both the [gem file](/Gemfile) and [Jekyll config](/_config.yml).

- **jekyll-sitemap** - Creates a robots and sitemap file, to help search engines index content. No changes to be made to the code to get this.
- **jekyll-feed** - Creates an RSS feed for your posts. This is typically shown on as link  in the header or footer.
- **jekyll-seo-tag** - Adds meta tags to help with SEO.

The first doesn't need any setup and generates the following:

- http://localhost:4000/sitemap.xml

The other two plugins have been added to the [defaults](_layouts/default.html) file as `feed_meta` and `seo` tags in the head (view the source of any page to see the result). If using a theme like `minima`, you will find that those are already included in the theme's default layout.

The RSS Feed is available here:

- http://localhost:4000/feed.xml

If not overriding the configured `baseurl`, the paths of all pages (including the feed and sitemap) will be off of the subpath. The links inside the feed and sitemap files will reflect that too.
