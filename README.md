# Static Pages Demo
> Demo of a static site built using the Jekyll tutorial

This project is based on following the [Jekyll Step-by-Step tutorial](https://jekyllrb.com/docs/step-by-step/01-setup/) and is hosted on Github Pages.

The contents of this project show how to work with Liquid and parts of Jekyll. The HTML that is applied is simple and overrides the layout which is handled by a theme, so no theme is used here. Therefore no Gemfile is needed.


## Run on Github Pages

Through setting Github Pages section of the Github repo's settings, this site is available at:

MichaelCurrin.github.io/static-pages-demo

Since this is a project page, the subpath of `static-pages-demo` is automatically set using the repo's name. In order to keep navigation and asset URLs in line with this and prevent errors, the `baseurl` in the [config](_config.yml) file is also set to that subpath.


## Installation

### Clone the repo

```bash
git clone https://github.com/MichaelCurrin/static-pages-demo.git
```

### System and project dependencies

Follow the [With a Gemfile](https://gist.github.com/MichaelCurrin/1085ab164550b31272699920b5549d4b#with-a-gemfile) gist instructions.


## Run


Build to the `_site` directory and start the web server with this command.

```bash
$ jekyll serve --baseurl ''
```

Open in the browser at:

http://localhost:4000/


The `baseurl` value is set in the config to make it easy to [run on Github Pages](#run-on-github-pages). But this should be be overridden when running locally as shown above, in order prevent the site from being served on http://localhost:4000/static-pages-demo and giving a 404 on the http://localhost:4000/ path.


When building site content to deploy to production, replace the default `'development'` value with `production` using the following.

```bash
JEKYLL_ENV=production bundle exec jekyll build
```

This will affect any checks such as `if jekyll.environment == "production"`

Then copy the contents of `_site` to your server.


## Plugins

The following plugins were recommended as part of the [deploy step](https://jekyllrb.com/docs/step-by-step/10-deployment/) of the Jekyll tutorial tutorial and so are used in this project.

- **jekyll-sitemap** - Creates a sitemap file to help search engines index content.
- **jekyll-feed** - Creates an RSS feed for your posts
- **jekyll-seo-tag** - Adds meta tags to help with SEO

The first doesn't need any setup and generates the following:

http://localhost:4000/sitemap.xml

The other two plugins have been added to the [defaults](_layouts/default.html) file as `feed_meta` and `seo` tags in the head (view the source of any page to see the result). If using a theme like `minima`, you will find that those are already included in the theme's default layout.

The RSS Feed is available here:

http://localhost:4000/feed.xml

If not overriding the configured `baseurl`, the paths of all pages (including the feed and sitemap) will be off of the subpath. The links inside the feed and sitemap files will reflect that too.


## Jekyll Docs

See this [Jekyll cheatsheet](https://learn.cloudcannon.com/jekyll-cheat-sheet/).

Read more in the [Jekyll documentation](https://jekyllrb.com).

- [Plugins](https://jekyllrb.com/docs/plugins/)
- [Data files](https://jekyllrb.com/docs/datafiles/)
- [Navigation](https://jekyllrb.com/tutorials/navigation/)
- [Includes](https://jekyllrb.com/docs/includes/)
- [Layouts](https://jekyllrb.com/docs/layouts/)
- [Convert an HTML site to Jekyll](https://jekyllrb.com/tutorials/convert-site-to-jekyll/)
- [Liquid Filters](https://jekyllrb.com/docs/liquid/filters/)
- [Link tag](https://jekyllrb.com/docs/liquid/tags/#links)

See also the content on the Jekyll site's sidebar around pages, posts, front matter and more.
