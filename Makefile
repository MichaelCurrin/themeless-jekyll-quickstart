help:
	@egrep '^\S|^$$' Makefile


install:
	bundle install --path vendor/bundle

upgrade:
	bundle update


# Serve on subpath, as on Github Pages project site.
ss serve-sub:
	bundle exec jekyll serve

# Serve on root, as on Github Pages user site or Netlify.
sr serve-root:
	bundle exec jekyll serve --baseurl ''


build-dev:
	bundle exec jekyll build

build-prod:
	JEKYLL_ENV=production bundle exec jekyll build
