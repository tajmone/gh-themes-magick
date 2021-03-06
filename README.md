# Pandoc v2 Support

```nohighlight
VERSION: 2.0
PANDOC:  2.1.1
STATUS:  5/12 themes ported
```

Good news for all maintainers of **Awesome** lists on GitHub: running a GitHub Pages website mirroring your `README.md` contents is now a *one-click* operation!

With **gh-themes-magick** you can publish your project’s single page website from a `/docs/` folder on your `master` branch, using **GitHub Page Generator**’s themes, and auto-magically <b>update its contents to mirror the project’s `README.md`</b>.

-   <b>Fully static</b> (no Jekyll)
-   No `gh-pages` branch involved
-   Single <b>YAML configuration</b> file
-   All the power of <b>pandoc v2</b>
-   [Now with <b>Task-Lists support</b>](#task-lists-support)

The `configuration.yaml` file exposes all the template’s variables, providing access to the website’s **metadata** fields (description, keywords, ecc.) needed to <b>boost your website SEO,</b> and extra variables to include additional sytlesheets, custom javascript, and more.

And – of course – this also works with any GitHub project looking for a single-page website, not necessarily built from the project's `README.md` but from any markdown documents. Likewise, with a few simple tweaks to the build script you can create a multipage website, exploiting the full power of pandoc's Markdown flavor.

------------------------------------------------------------------------

Contents
========

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="true" lowercase_only_ascii="true" uri_encoding="true" depth="3" -->

- [Introduction](#introduction)
- [How It Works](#how-it-works)
- [Main Features](#main-features)
    - [Single Configuration File](#single-configuration-file)
    - [Syntax Highligthing](#syntax-highligthing)
    - [Task-Lists Support](#task-lists-support)
- [Available Themes](#available-themes)
- [Setting up a Website](#setting-up-a-website)
- [Updating Its Contents](#updating-its-contents)
- [Licenses and Credits](#licenses-and-credits)
    - [GitHub Themes](#github-themes)
    - [Highlight.js](#highlightjs)
    - [Task-List Lua Filter](#task-list-lua-filter)

<!-- /MarkdownTOC -->

------------------------------------------------------------------------

Introduction
============

I started to work on **gh-themes-magick** project at a time when **GitHub Pages automatic generator** did _not_ allow to chose a theme for project sites published from the `/docs/` folder on your `master` branch. But 3 days before this project was completed, GitHub announced that this very feature was now available:

- https://github.com/blog/2295-new-theme-chooser-for-github-pages

... this somehow obliterated the main purpose of **gh-themes-magick** — ie: being able to use GitHub themes from `master` branch and have the website contents mirror the `README` file.

Still ...   **gh-themes-magick** offers an alternative approach to publishing your project site — using pandoc templates instead of Jekyll. This allows easier customization of the themes themselves. Also, this project is open to host user created themes, beside those offered by GitHub; so, hopefully this repo might grow in time, offering a great variety of themes to chose from.

With the release of pandoc v2, this project has acquired new meaning because of the powerful new features introduced in pandoc v2.


------------------------------------------------------------------------

How It Works
============

**gh-themes-magick** exploits **pandoc**’s super-powers to <b>convert your repo’s `README.md` file to a `docs/index.html` themed file.</b> Your are basically getting a copy of the same themes found on GitHub’s automatic page generator, plus a pandoc html5 template for each theme, and scripts to auto-magically convert/update your project’s single-page website contents from the `README.md` file in your repo’s root.

This means that now you can:

1.  Enjoy GitHub’s automatic page generator themes when publishing your website from the `/docs/` folder on your `master` branch .
2.  Update your website to mirror the repo’s latest `README.md` file, with a single click.

------------------------------------------------------------------------

Main Features
=============

Single Configuration File
-------------------------

Website configuration is handled by a single YAML file: `configuration.yaml`.

Its settings are highly intuitive, comments and sample values are provided for guidance:

``` yaml
# ==============================================================================
#                                 WEBSITE HEADER                                
# ==============================================================================
# These variables are shown in the website header.
# ------------------------------------------------------------------------------
website_title:   'GitHub Pages Themes Magick'
website_tagline: 'A one-click website in `master` branch'
```

You only have to set once your GitHub username and repo name, **gh-themes-magick** will create all the template’s required URLs from them:

``` yaml
# ==============================================================================
#                                  GITHUB LINKS                                 
# ==============================================================================
# The following variables are used for automagically creating links to your repo
# on GitHub, and for the .zip and .tar download links.
# ------------------------------------------------------------------------------
# Example: https://github.com/tajmone/gh-themes-magick
your_github_username: tajmone
your_github_reponame: gh-themes-magick
```

The <b>website metadata is exposed through template variables</b> which allow you to control how your website will be indexed by search engines (optimizing your ranking):

``` yaml
description: 'Your project description, to be shown in search engines results.'
keywords:
  - your
  - keywords list
```

And many more fine-grain settings are availble within `configuration.yaml`.

Syntax Highligthing
-------------------

**gh-themes-magick** uses [**highlight.js**](https://highlightjs.org) browser library for highlighting code blocks.

Syntax highlighting occurs automatically because **highlight.js** does a good job at auto-detecting languages within code blocks. But you can also follow best practices and add the language identifier to fenced code blocks in your markdown source:

```` nohighlight
```ruby
require 'redcarpet'
markdown = Redcarpet.new("Hello World!")
puts markdown.to_html
```
````

and your code will shine like this on your project’s website:

``` ruby
require 'redcarpet'
markdown = Redcarpet.new("Hello World!")
puts markdown.to_html
```

You can disable syntax highlighting for any fenced code block by giving it the `nohighlight` identifier:

```` nohighlight
```nohighlight
@ECHO "This block won't be syntax-highlighted"
```
````

Each theme comes with a custom prebuilt version of **highlight.js** (9.12.0) with 24 commonly used languages:

|                 |                   |
|-----------------|-------------------|
| 1. Apache       | 13. JavaScript    |
| 2. Bash         | 14. Makefile      |
| 3. C#           | 15. Markdown      |
| 4. C++          | 16. Nginx         |
| 5. CSS          | 17. Objective-C   |
| 6. CoffeeScript | 18. PHP           |
| 7. Diff         | 19. Perl          |
| 8. HTML, XML    | 20. Python        |
| 9. HTTP         | 21. Ruby          |
| 10. Ini         | 22. SQL           |
| 11. JSON        | 23. Shell Session |
| 12. Java        | 24. YAML          |

You can <b>create your custom build of **highlight.js** directly in your browser</b>: on the [website’s download page](https://highlightjs.org/download/#download-form) pick any languages you want from <b>a list of 176 languages</b> and download a taylored version to overwrite the one that comes with **gh-themes-magick** by default.

You can also overwrite the syntax highlighting theme, replacing it with on of the 79 themes available from **highlight.js**, or with your custom color scheme.

**Markdown**

    # Markdown Is Cool

    Write text [with links](http://example.com) inline or [link references][1].

    * one _thing_ has *em*phasis
    * two __things__ are **bold**

    [1]: http://example.com

**Python**

``` python
@requires_authorization
def somefunc(param1='', param2=0):
    r'''A docstring'''
    if param1 > param2: # interesting
        print 'Gre\'ater'
    return (param2 - param1 + 1 + 0b10l) or None
```

**diff**

``` diff
Index: languages/ini.js
===================================================================
--- languages/ini.js    (revision 199)
+++ languages/ini.js    (revision 200)
@@ -1,8 +1,7 @@
 hljs.LANGUAGES.ini =
 {
   case_insensitive: true,
-  defaultMode:
-  {
+  defaultMode: {
     contains: ['comment', 'title', 'setting'],
     illegal: '[^\\s]'
   },
```

**CSS**

``` css
@font-face {
  font-family: Chunkfive; src: url('Chunkfive.otf');
}

body, .usertext {
  color: #F0F0F0; background: #600;
  font-family: Chunkfive, sans;
}

@import url(print.css);
@media print {
  a[href^=http]::after {
    content: attr(href)
  }
}
```

**Apacheconf**

``` apacheconf
# rewrite`s rules for wordpress pretty url
LoadModule rewrite_module  modules/mod_rewrite.so
RewriteCond %{REQUEST_FILENAME} !-f
RewriteCond %{REQUEST_FILENAME} !-d
RewriteRule . index.php [NC,L]

ExpiresActive On
ExpiresByType application/x-javascript  "access plus 1 days"

Order Deny,Allow
Allow from All

<Location /maps/>
  RewriteMap map txt:map.txt
  RewriteMap lower int:tolower
  RewriteCond %{REQUEST_URI} ^/([^/.]+)\.html$ [NC]
  RewriteCond ${map:${lower:%1}|NOT_FOUND} !NOT_FOUND
  RewriteRule .? /index.php?q=${map:${lower:%1}} [NC,L]
</Location>
```


## Task-Lists Support

Now __gh-themes-magick__ supports GitHub Flavored Markdown's Task-Lists, thanks to the pandoc Lua filter [`task-list.lua`][Task-List Lua]:

- [x] Add Task-Lists support
    + [x] Thanks to pandoc Lua filters
- [x] Introduced in pandoc `v2.x`
- [ ] Wasn't available in pandoc `v1.x`


------------------------------------------------------------------------

Available Themes
================

Currently, <b>**5** of the **12** GitHub themes have been ported to **gh-themes-magick**</b>, the one used by this site (Architect, by Jason Long) being one of them.

Click on the thumbnails to see a live preview of the other four:

|                  <h2>Cayman</h2>                 |              <h2>Dinky</h2>                |
|:------------------------------------------------:|:------------------------------------------:|
|                   by Jason Long                  |             by Diana Mounter               |
|    [![Cayman][cayman x300]][Cayman HTML Prev]    | [![Dinky][dinky x300]][Dinky HTML Prev]    |
|                     CC-BY 4.0                    |                CC-BY 3.0                   |

|                  <h2>Leap Day</h2>               |               <h2>Merlot</h2>              |
|:------------------------------------------------:|:------------------------------------------:|
|                   by Matt Graham                 |              by Cameron McEfee             |
| [![Leap Day][leap day x300]][Leap Day HTML Prev] | [![Merlot][merlot x300]][Merlot HTML Prev] |
|                    CC BY-SA 3.0                  |                     MIT                    |

------------------------------------------------------------------------

Setting up a Website
====================

These are the steps:

1.  Install [**pandoc**](https://github.com/jgm/pandoc/releases/latest)
2.  Get [**gh-themes-magick**](https://github.com/tajmone/gh-themes-magick)
3.  Choose a theme
4.  Copy it to your repo’s `master` branch
5.  Rename the theme folder to `/docs/`
6.  Fill-in the YAML config file
7.  Run the `abracadabra` script
8.  Commit and push changes
9.  Set GitHub Pages to publish from `/master/` branch `/docs/` folder

That’s it! Your project website is now live.

([Click here to view GitHub’s Help on how to configure a publishing source for GitHub Pages](https://help.github.com/articles/configuring-a-publishing-source-for-github-pages/#publishing-your-github-pages-site-from-a-docs-folder-on-your-master-branch))

------------------------------------------------------------------------

Updating Its Contents
=====================

Whenever you want to update your website to mirror the contents of your repo’s `README.md`:

1.  Run the `abracadabra` script
2.  Commit and push changes to `master`

For detailed instructions on setup and customization, refer to the project’s documentation and [online Wiki](https://github.com/tajmone/gh-themes-magick/wiki).

------------------------------------------------------------------------

Licenses and Credits
====================

**gh-themes-magick** is copyright © 2016, Tristano Ajmone ([@tajmone](https://github.com/tajmone)).

Tristano Ajmone ([@tajmone](https://github.com/tajmone)) is the creator an maintainer of the **gh-themes-magick** project.</b> First released in December, 2016.

## GitHub Themes

**gh-themes-magick** is released under the **Creative Common Attribution 4.0** International License (CC BY 4.0). <b>The project is built around third party themes</b>, each one isolated in its own folder and <b>each released under the terms of its upstream license</b>:

| THEME                        | AUTHOR         | FOLDER                  |    LICENSE      |
|------------------------------|----------------|-------------------------|:---------------:|
| [Architect][Architect Theme] | Jason Long     | `/gh-themes/architect/` | CC-BY 4.0       |
| [Cayman][Cayman Theme]       | Jason Long     | `/gh-themes/cayman/`    | CC-BY 4.0       |
| [Dinky][Dinky Theme]         | Diana Mounter  | `/gh-themes/dinky/`     | CC-BY 3.0       |
| [Leap Day][Leap Day Theme]   | Matt Graham    | `/gh-themes/leapday/`   | CC-BY 3.0 + MIT |
| [Merlot][Merlot Theme]       | Cameron McEfee | `/gh-themes/merlot/`    | MIT             |


Detailed information on the themes’ licenses, and about the adaptative changes made to the original code and resources, can be found in each theme’s folder, inside the `LICENSE` and `CHANGELIST` files.

## Highlight.js

All themes also contains a copy of the [**highlight.js**](https://highlightjs.org) library and one of its CSS themes. <b>**Highlight.js** is copyright © 2006, [Ivan Sagalaev](https://github.com/isagalaev), released under BSD-3-Clause License.</b> The following highlight.js themes have been included in **gh-themes-magick** (some with changes):

-   “[**GitHub Gist**](https://github.com/isagalaev/highlight.js/blob/master/src/styles/github-gist.css)” by [Louis Barranqueiro](https://github.com/LouisBarranqueiro).
-   “[**Docco**](https://github.com/isagalaev/highlight.js/blob/master/src/styles/docco.css)”, coverted from [Docco](http://jashkenas.github.io/docco/) by [Simon Madine](https://github.com/thingsinjars).
-   “[**VIM-Hybrid**”](https://github.com/isagalaev/highlight.js/blob/master/src/styles/hybrid.css) by w0ng (<https://github.com/w0ng/vim-hybrid>)


## Task-List Lua Filter

The scripts to convert from markdown to HTML use the [`task-list.lua`][Task-List Lua] pandoc filter, copied from the [lua-filters] project, released under the MIT license.


[Architect Theme]:    https://github.com/jasonlong/architect-theme    "Architect theme project page"
[Cayman Theme]:       https://github.com/jasonlong/cayman-theme       "Cayman theme project page"
[Dinky Theme]:        https://github.com/broccolini/dinky             "Dinky theme project page"
[Leap Day Theme]:     https://github.com/mattgraham/leapday           "Leap Day theme project page"
[Merlot Theme]:       https://github.com/cameronmcefee/merlot         "Merlot theme project page"
[Midnight Theme]:     https://github.com/mattgraham/midnight          "Midnight theme project page"
[Minimal Theme]:      https://github.com/orderedlist/minimal          "Minimal theme project page"
[Modernist Theme]:    https://github.com/orderedlist/modernist        "Modernist theme project page"
[Slate Theme]:        https://github.com/jasoncostello/slate          "Slate theme project page"
[Tactile Theme]:      https://github.com/jasonlong/tactile-theme      "Tactile theme project page"
[Time Machine Theme]: https://github.com/jonrohan/time-machine-theme  "Time Machine theme project page"

[Architect x300]:    https://github.com/tajmone/gh-themes-magick/raw/master/images/themes-thumbs/300/architect.gif   "Architect theme screenshot"
[Cayman x300]:       https://github.com/tajmone/gh-themes-magick/raw/master/images/themes-thumbs/300/cayman.gif      "Cayman theme screenshot"
[Dinky x300]:        https://github.com/tajmone/gh-themes-magick/raw/master/images/themes-thumbs/300/dinky.gif       "Dinky theme screenshot"
[Hack x300]:         https://github.com/tajmone/gh-themes-magick/raw/master/images/themes-thumbs/300/hack.gif        "Hack theme screenshot"
[Leap Day x300]:     https://github.com/tajmone/gh-themes-magick/raw/master/images/themes-thumbs/300/leapday.gif     "Leap Day theme screenshot"
[Merlot x300]:       https://github.com/tajmone/gh-themes-magick/raw/master/images/themes-thumbs/300/merlot.gif      "Merlot theme screenshot"
[Midnight x300]:     https://github.com/tajmone/gh-themes-magick/raw/master/images/themes-thumbs/300/midnight.gif    "Midnight theme screenshot"
[Minimal x300]:      https://github.com/tajmone/gh-themes-magick/raw/master/images/themes-thumbs/300/minimal.gif     "Minimal theme screenshot"
[Modernist x300]:    https://github.com/tajmone/gh-themes-magick/raw/master/images/themes-thumbs/300/modernist.gif   "Modernist theme screenshot"
[Slate x300]:        https://github.com/tajmone/gh-themes-magick/raw/master/images/themes-thumbs/300/slate.gif       "Slate theme screenshot"
[Tactile x300]:      https://github.com/tajmone/gh-themes-magick/raw/master/images/themes-thumbs/300/tactile.gif     "Tactile theme screenshot"
[Time Machine x300]: https://github.com/tajmone/gh-themes-magick/raw/master/images/themes-thumbs/300/timemachine.gif "Time Machine theme screenshot"


[Architect HTML Prev]:      https://cdn.rawgit.com/tajmone/gh-themes-magick/001e280/gh-themes/architect/index.html    "Architect theme live preview"
[Cayman HTML Prev]:         https://cdn.rawgit.com/tajmone/gh-themes-magick/001e280/gh-themes/cayman/index.html       "Cayman theme live preview"
[Dinky HTML Prev]:          https://cdn.rawgit.com/tajmone/gh-themes-magick/001e280/gh-themes/dinky/index.html        "Dinky theme live preview"
[Hack HTML Prev]:           https://cdn.rawgit.com/tajmone/gh-themes-magick/001e280/gh-themes/hack/index.html         "Hack theme live preview"
[Leap Day HTML Prev]:       https://cdn.rawgit.com/tajmone/gh-themes-magick/001e280/gh-themes/leapday/index.html      "Leap Day theme live preview"
[Merlot HTML Prev]:         https://cdn.rawgit.com/tajmone/gh-themes-magick/001e280/gh-themes/merlot/index.html       "Merlot theme live preview"
[Midnight HTML Prev]:       https://cdn.rawgit.com/tajmone/gh-themes-magick/001e280/gh-themes/midnight/index.html     "Midnight theme live preview"
[Minimal HTML Prev]:        https://cdn.rawgit.com/tajmone/gh-themes-magick/001e280/gh-themes/minimal/index.html      "Minimal theme live preview"
[Modernist HTML Prev]:      https://cdn.rawgit.com/tajmone/gh-themes-magick/001e280/gh-themes/modernist/index.html    "Modernist theme live preview"
[Slate HTML Prev]:          https://cdn.rawgit.com/tajmone/gh-themes-magick/001e280/gh-themes/slate/index.html        "Slate theme live preview"
[Tactile HTML Prev]:        https://cdn.rawgit.com/tajmone/gh-themes-magick/001e280/gh-themes/tactile/index.html      "Tactile theme live preview"
[Time Machine HTML Prev]:   https://cdn.rawgit.com/tajmone/gh-themes-magick/001e280/gh-themes/timemachine/index.html  "Time Machine theme live preview"



[Jason Long]:     https://github.com/jasonlong      
[Diana Mounter]:  https://github.com/broccolini     
[Matt Graham]:    https://github.com/mattgraham     
[Cameron McEfee]: https://github.com/cameronmcefee  

[CCBY4]:          https://creativecommons.org/licenses/by/4.0/
[CCBY3]:          https://creativecommons.org/licenses/by/3.0/
[MIT Leap Day]:   https://github.com/mattgraham/leapday/blob/master/LICENCE
[MIT Merlot]:     https://github.com/cameronmcefee/merlot/blob/master/LICENSE

[lua-filters]: https://github.com/pandoc/lua-filters "Visit the 'lua-filters' repository" 
[Task-List Lua]: https://github.com/pandoc/lua-filters/tree/master/task-list "Visit the project page of 'task-list.lua' filter" 
