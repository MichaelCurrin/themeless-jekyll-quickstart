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

### System Dependencies

Install Jekyll

```bash
$ gem install --user-install jekyll
```

There are no other plugins or themes to install.


## Run


Build to the `_site` directory and start the webserver with this command.

```bash
$ jekyll serve --baseurl ''
```

Open in the browser at:

http://localhost:4000/


The `baseurl` value is set in the config to make it easy to [run on Github Pages](#run-on-github-pages). But this should be be overridden when running locally as shown above, in order prevent the site from being served on http://localhost:4000/static-pages-demo and giving a 404 on the http://localhost:4000/ path.


## Docs

See this [Jekyll cheatsheet](https://learn.cloudcannon.com/jekyll-cheat-sheet/).

Read more in the [Jekyll documentation](https://jekyllrb.com).

- [Data files](https://jekyllrb.com/docs/datafiles/)
- [Navigation](https://jekyllrb.com/tutorials/navigation/)
- [Includes](https://jekyllrb.com/docs/includes/)
- [Layouts](https://jekyllrb.com/docs/layouts/)
- [Convert an HTML site to Jekyll](https://jekyllrb.com/tutorials/convert-site-to-jekyll/)
- [Liquid Filters](https://jekyllrb.com/docs/liquid/filters/)

See also the content on the sidebar around pages, posts, front matter and more.
