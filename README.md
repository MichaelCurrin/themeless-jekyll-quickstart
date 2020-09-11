# Themeless Jekyll Quickstart
> A barebones Jekyll site without an external theme - based on the Jekyll tutorial

[![Made with Jekyll](https://img.shields.io/badge/Made_with-Jekyll-blue)](https://jekyllrb.com)
[![GitHub tag](https://img.shields.io/github/tag/MichaelCurrin/themeless-jekyll-quickstart)](https://GitHub.com/MichaelCurrin/themeless-jekyll-quickstart/tags/)
[![MIT license](https://img.shields.io/badge/License-MIT-blue)](#license)

<div align="center">

[![Use this template](https://img.shields.io/badge/Use_this_template-green?style=for-the-badge)](https://github.com/MichaelCurrin/themeless-jekyll-quickstart/generate)
[![View site GH Pages](https://img.shields.io/badge/GitHub_Pages-Live_demo-green?style=for-the-badge)](https://MichaelCurrin.github.io/themeless-jekyll-quickstart/)

</div>

**Table of contents:**

- [Preview](#preview)
- [Purpose](#purpose)
- [About](#about)
    - [Theme](#theme)
    - [How this project is structured](#how-this-project-is-structured)
    - [Resources](#resources)
- [Run on Github Pages](#run-on-github-pages)
- [Installation](#installation)
    - [Clone](#clone)
    - [System dependencies](#system-dependencies)
    - [Project dependencies.](#project-dependencies)
- [Run](#run)
    - [On subpath](#on-subpath)
    - [On root path](#on-root-path)
- [Production build](#production-build)
- [Plugins](#plugins)
    - [Sitemap](#sitemap)
    - [Feed and SEO Tag](#feed-and-seo-tag)
- [License](#license)


## Preview

![sample](/sample.png)


## Purpose

This project is based on following the [Jekyll Step-by-Step tutorial](https://jekyllrb.com/docs/step-by-step/01-setup/) and serves the following purposes:

- Create a project quickly from this one, using the _Use this template_ button.
- This is a reference for other projects.
- There is demo site hosted as a _Github Pages_ site.

Note that this project has **no** theme, to keep the config and installation lighter. If you want to see use of a theme in a simple project, see this projet:

- [michaelCurrin/jekyll-blog-demo](https://github.com/MichaelCurrin/jekyll-blog-demo).

This project demonstrates a few things in Jekyll, but the approach is not necessarily best practice. See [minima](https://github.com/jekyll/minima) project for a good idea of how to setup a navbar, styling, JS, includes files and other pieces.


## About

The contents of this project shows how to work with [Liquid](https://shopify.github.io/liquid/) templating and [Jekyll](https://jekyllrb.com/) (Ruby gem for generating static sites).

The _frontmatter_ (HTML and markdown content) pages are built with the template engine to produce HTML which is served. In this case, the output is kept simple - a few pages, each with a navigation bar that has current page highlighted.

### Theme

Usually a _Jekyll theme_ is used for static sites so they can have styling, then you override the sections you want. However this project has **no** theme set.

### How this project is structured

- Navigation bar using configured a [navigation.html](/_data/navigation.yml) data file and rendered using [navigation.html](_includes/navigation.html) file.
- Blog [page](/blog.html) and [posts](/_posts).
- Blog post authors are in the [\_authors](_authors/) directory, enabled as a collection in [config](_config.yml) and then referenced by blog post with an `author` field.
- Skills are listed in the [skills.yml](/_data/skills.yml) data file and are iterated over in the [my_skills.md](/my_skills.md) page.
- The [_layouts](/layouts/) directory has a few layouts and these are matched to pages using the [config](_config.yml) file.
- [Plugins](#plugins) are set in the [Gemfile](/Gemfile) and [config](_config.yml).

#### Collections note

A note on generating pages as a collection. Each author markdown file generate its own author page because of the setup above. When iterating, you can use the default ordering, or use a Jekyll filter to order them or reverse them or you could add a priority (or order or weight) field in each to sort by (e.g. sort by this value ascending where `1` would mean 1st position).

This cannot unfortunately be done using a single YAML data file. Unless you use a plugin, or generate markdown files from a CSV as suggested in this [Jekyll issue](https://github.com/jekyll/jekyll/issues/2983) conversation.

### Resources

- [Jekyll collections](https://jekyllrb.com/docs/collections/)
- Some useful links which helped me with learning how to use Jekyll are in this [gist](https://gist.github.com/MichaelCurrin/dfd14bfa74938e40f251bc00445a1627).


## Deploy

This project can be run on Github Pages.

Through setting Github Pages section of the Github repo's settings, this site is available at:

- [michaelcurrin.github.io/themeless-jekyll-quickstart](https://michaelcurrin.github.io/themeless-jekyll-quickstart/)

Since this is a project page, the subpath of `themeless-jekyll-quickstart` is automatically set using the repo's name. In order to keep navigation and asset URLs in line with this and prevent errors, the `baseurl` in the [config](/_config.yml) file is also set to that subpath.


## Installation

Setup the project locally - instructions are for _Linux_ or _macOS_ systems.

### Clone

Optionally this to your own repo - either fork this repo or click [![Use this template](https://img.shields.io/badge/Use_this_template-green)](https://github.com/MichaelCurrin/themeless-jekyll-quickstart/generate).

Then clone your repo or this one.

Navigate to the repo root directory locally.

You can view commands in the [Makefile](/Makefile) or skip that and continue.

```bash
$ make help
```

### Install system dependencies

Install [Jekyll](https://jekyllrb.com/) and [Bundler](https://bundler.io/) globally.

```bash
$ gem install --user-install jekyll bundler
```

### Install project dependencies

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

### On subpath

Set `baseurl` value in the config - this should be changed to match the repo name. This makes it easy to mirror how sites [run on Github Pages](#run-on-github-pages).

```bash
$ make serve
```

Open the browser at:

- http://localhost:4000/static-pages-demo


### On root path

```bash
$ make serve-root
```

Open the browser at:

- http://localhost:4000/


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


## License

Released under [MIT](/LICENSE).
