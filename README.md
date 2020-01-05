# Static Pages Demo
> Barebones demo of a themeless Jekyll static site, based on the Jekyll tutorial.

[![Use this template](https://img.shields.io/badge/Use_this_template-green.svg)](https://github.com/MichaelCurrin/static-pages-demo/generate)
[![Made with Jekyll](https://img.shields.io/badge/Made%20with-Jekyll-blue.svg)](https://jekyllrb.com)
[![MIT license](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/MichaelCurrin/static-pages-demo/blob/master/LICENSE)

**Table of contents:**

- [Purpose](#purpose)
- [About](#about)
- [Run on Github Pages](#run-on-github-pages)
- [Installation](#installation)
    - [Clone](#clone)
    - [System dependencies](#system-dependencies)
    - [Project dependencies.](#project-dependencies)
- [Run](#run)
- [Plugins](#plugins)
    - [Sitemap](#sitemap)
- [Feed and SEO Tag](#feed-and-seo-tag)

## Purpose

This project is based on following the [Jekyll Step-by-Step tutorial](https://jekyllrb.com/docs/step-by-step/01-setup/) and serves the following purposes:

- Create quickstart project from this one, using the _Use this template_ button.
- This is a reference for other projects.
- This has a demo site hosted as a _Github Pages_ site.

## About

The contents of this project shows how to work with [Liquid](https://shopify.github.io/liquid/) templating and [Jekyll](https://jekyllrb.com/) (Ruby gem for generating static sites). The frontmatter (HTML and markdown content) pages are built with the template engine to produce HTML which is served. In this case, the output is kept simple - a few pages, each with a navigation bar that has current page highlighted.

Usually a Jekyll theme is used for static sites so they can have styling, then you override the sections you want. There is no theme here and so there is no _Gemfile_ nor theme set in config.

Some useful links which helped me with learning how to use Jekyll are in this [gist](https://gist.github.com/MichaelCurrin/dfd14bfa74938e40f251bc00445a1627).

## Run on Github Pages

Through setting Github Pages section of the Github repo's settings, this site is available at:

- [michaelcurrin.github.io/static-pages-demo](https://michaelcurrin.github.io/static-pages-demo)

Since this is a project page, the subpath of `static-pages-demo` is automatically set using the repo's name. In order to keep navigation and asset URLs in line with this and prevent errors, the `baseurl` in the [config](_config.yml) file is also set to that subpath.


## Installation

Setup the project locally - instructions are for _Linux_ or _macOS_ systems.

### Clone

Optionally this to your own repo - either fork this repo or click _Use this Template_.

Then clone your repo or this one.

Navigate to the repo root directory locally.

You can view commands in the [Makefile](./Makefile) or continue.

```bash
$ make help
```

### System dependencies

Install [Jekyll](https://jekyllrb.com/) and [Bundler](https://bundler.io/) globally.

```bash
$ gem install jekyll bundler
```

### Project dependencies.

Install gems. If run repeatedly, this command will **not** upgrade gems.

```bash
$ make install
```

Run this command in future to upgrade to the latest gems.

```bash
$ make upgrade
```

The [Gemfile.lock](/Gemfile.lock) file will be updated if there are any changes. You can commit this. That file is optional for Github Pages but required if you want to deploy to Netlify.

## Run

Build to the `_site` directory and start the web server.

```bash
$ make server-root
```

Open the browser at:

- http://localhost:4000/


The `baseurl` value is set in the config to make it easy to [run on Github Pages](#run-on-github-pages). But this should be be overridden when running locally as shown above, in order prevent the site from being served on http://localhost:4000/static-pages-demo and giving a 404 on the http://localhost:4000/ path.

## Production build

When building site content to deploy to production, replace the default `'development'` value with `production`.

```bash
$ make build-prod
```

This will affect any checks in the files such as `if jekyll.environment == "production"`. This is useful for example to only show Google Analytics tag on Production site.

Then copy the contents of *_site* directory to your server and serve with Apache or a similar web server.


## Plugins

The following plugins were recommended as part of the [deploy step](https://jekyllrb.com/docs/step-by-step/10-deployment/) of the Jekyll tutorial tutorial and so are used in this project in both the [gem file](/Gemfile) and [Jekyll config](/_config.yml).

- **jekyll-sitemap** - Creates a robots and sitemap file, to help search engines index content.
- **jekyll-feed** - Creates an RSS feed for your posts. This is typically shown on as link  in the header or footer.
- **jekyll-seo-tag** - Makes meta tag snippets available, to help with SEO.

### Sitemap

The first doesn't need any setup other than in the two files mentioned above. Serving the site will give following:

- http://localhost:4000/robots.txt
- http://localhost:4000/sitemap.xml

### Feed and SEO Tag

The other two plugins have been added to the [defaults](_layouts/default.html) file as `{% feed_meta %}` and `{% seo %}` tags in the head (view the source of any page to see the result). If using a theme like `minima`, you will find that those are already included in the theme's default layout.

The RSS Feed is available here:

- http://localhost:4000/feed.xml

If not overriding the configured `baseurl`, the paths of all pages (including the feed and sitemap) will be off of the subpath. The links inside the feed and sitemap files will reflect that too.
