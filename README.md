# Fermi <!-- omit in toc -->

A simple and pragmatic Jekyll theme for blog.

![screenshot](screenshot.jpg)

## Highlight Features <!-- omit in toc -->

- Support the CSS resets [Normalize](https://github.com/necolas/normalize.css)
- Support [Font Awesome](https://fontawesome.com/)
- Support [MathJax](https://www.mathjax.org/)
- Support [Disqus](https://disqus.com/)
- Support [Google Analytics 4](https://analytics.google.com/analytics/web/)
- Support the pagination, via [`jekyll-paginate`](https://github.com/jekyll/jekyll-paginate)
- Light and dark mode, via [`prefers-color-scheme`](https://web.dev/prefers-color-scheme/)
- Archive pages implemented in pure [Liquid](https://shopify.github.io/liquid/)

## Table of Contents <!-- omit in toc -->

- [Installation](#installation)
- [Usage](#usage)
  - [Specifying the Page Language](#specifying-the-page-language)
  - [Customizing the Head](#customizing-the-head)
  - [Navigation](#navigation)
  - [Social Links](#social-links)
  - [Archive Pages](#archive-pages)
  - [MathJax](#mathjax)
  - [Disqus](#disqus)
  - [Google Analytics 4](#google-analytics-4)
  - [More Customization](#more-customization)
- [Contributing](#contributing)
- [Development](#development)
- [License](#license)

## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "jekyll-theme-fermi"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: jekyll-theme-fermi
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-theme-fermi

## Usage

The Fermi theme is easy to use. You just need to refer to the demo's [`_config.yml`](https://github.com/v4vong/jekyll-theme-fermi/blob/gh-pages/_config.yml) file, modify some properties and you can use it immediately.

### Specifying the Page Language

You can specify the language on each page by setting the `lang` property. If the property is not set, the `site.lang` would be referred. If the `site.lang` is not set, the default value `en` would be applied.

### Customizing the Head

If you want to put more data into the `<head>`, you don't need to copy the whole `_includes/head.html` file from this repo and overwrite it in your repo. You just need to create a `_includes/custom-head.html` file in your repo, and put some data into there. These data will be automatically imported into the `<head>`.

### Navigation

The navigation in Fermi is very easy to configure, just specify the titles and URLs in the [`_data/navigation.yml`](https://github.com/v4vong/jekyll-theme-fermi/blob/gh-pages/_data/navigation.yml) file, for example,

```yml
- title: Home
  url: /
- title: About
  url: /about.html
- title: Archive
  url: /archive.html
```

### Social Links

The social links in Fermi is also very easy to connfigure. You don't need to import any large SVG file to render the icons because Fermi supports the [Font Awesome](https://fontawesome.com/). Specify the titles, URLs, and icons in the [`_data/social.yml`](https://github.com/v4vong/jekyll-theme-fermi/blob/gh-pages/_data/social.yml) file, for example,

```yml
- title: Email
  url: mailto:v4vong@gmail.com
  icon: fas fa-envelope
- title: Twitter
  url: https://twitter.com/v4vong
  icon: fab fa-twitter
- title: GitHub
  url: https://github.com/v4vong
  icon: fab fa-github
```

### Archive Pages

Fermi provides a template `archive` to archive posts by years, categories, or tags.

If you want to show an archive page of years, just create a file and put these front matter in it:

```yml
---
layout: archive
type: years
title: Archive by Years
---
```

Similarly, if you want to show an archive page of categories, just create a file and put these front matter in it:

```yml
---
layout: archive
type: categories
title: Archive by Categories
---
```

Besides, if you want the categories and tags displayed in the post to link to the archive pages, you need to configure the paths to the category and tag archive pages in the `_config.yml` file, for example:

```yml
categories_path: /categories/
tags_path: /tags/
```

### MathJax

Fermi relies on the [MathJax](https://www.mathjax.org/) to render math. The MathJax is disabled by default. You need to set `math: true` on the page where you want to enable the MathJax.

### Disqus

To enable [Disqus](https://disqus.com/), just set the [Disqus shortname](https://help.disqus.com/en/articles/1717111-what-s-a-shortname) in the `_config.yml`, for example,

```yml
disqus: <your disqus shortname>
```

### Google Analytics 4

Fermi support the [Google Analytics 4](https://support.google.com/analytics/answer/10089681). To enable it, just set the Measurement ID in the `_config.yml`, for example,

```yml
google_analytics: G-XXXXXXXXXX
```

### More Customization

You can easily modify some styles of this theme, such as colors and fonts. You don't have to copy a lot of CSS into your repository, just copy [`_sass/fermi/_variables.scss`](_sass/fermi/_variables.scss) and change the variable value.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/v4vong/jekyll-theme-fermi. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Development

To set up your environment to develop this theme, run `bundle install`.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` tracked with Git will be bundled.
To add a custom directory to your theme-gem, please edit the regexp in `jekyll-theme-fermi.gemspec` accordingly.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
