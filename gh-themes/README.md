# GitHub Themes Magick

This is a live preview of one of the themes bundled with **gh-themes-magick**:

- https://github.com/tajmone/gh-themes-magick — project page
- https://tajmone.github.io/gh-themes-magick — project website

**gh-themes-magick** exploits **pandoc**’s super-powers to convert your repo’s `README.md` file to a `docs/index.html` themed file. Your are basically getting a copy of the same themes found on [GitHub Page Generator](https://github.com/blog/1081-instantly-beautiful-project-pages), plus a pandoc html5 template for each theme, and scripts to auto-magically convert/update your project’s single-page website contents from the `README.md` file in your repo’s root.

This means that now you can:

1.  Enjoy GitHub’s automatic Page Generator when publishing your website from the `/docs/` folder on your `master` branch .
2.  Update your website to mirror the repo’s latest `README.md` file, with a single click.

  
------------------------------------------------------------------------

<!-- #toc -->

* [Themes Previews](#themes-previews)
    * [Quick Usage Instructions](#quick-usage-instructions)
        * [Theme Setup](#theme-setup)
        * [Customization/Editing](#customizationediting)
        * [Publishing on Github Pages](#publishing-on-github-pages)
* [Ported Themes](#ported-themes)
* [Unported Themes](#unported-themes)
* [Configuration](#configuration)
* [Syntax Highlighting](#syntax-highlighting)

<!-- /toc -->

------------------------------------------------------------------------

# Themes Previews

You can use theme previews to experiment locally with themes, styles and customizations before publishing your website. This page is auto-generated from the `README.md` file in its parent folder:

    /gh-themes-magick/gh-themes/README.md

All theme previews are built from the same README file.

To update a theme’s html preview, run the `abracadbra` script within its folder (`abracadbra.sh` under Linux, `abracadbra.bat` under Windows). To update all theme previews at one, run `global-spell.bat` (Windows only).

## Quick Usage Instructions

To use a theme in your project:

### Theme Setup

1.  Clone or [download](https://github.com/tajmone/gh-themes-magick/archive/master.zip) [__gh-themes-magick__](https://github.com/tajmone/gh-themes-magick)
2.  Choose a theme from the `/themes/` folder
3.  Copy the theme’s folder to your repo’s `master` branch
4.  Rename the theme’s folder to `docs` (eg: from `dinky`)

### Customization/Editing

1.  Edit the `/docs/configuration.yaml` file
2.  Run the `/docs/abracadabra` script to build/update the website
3.  Preview locally `/docs/index.html`

Keep editing your `/README.md` file and going through these last three steps until your ready to publish.

> __NOTE__: Keep in mind that relative links will yeld different results in `/README.md` and its `/docs/index.html` counterpart — test well before publishing.

### Publishing on Github Pages

When you are satisfied with your local preview of the website:

-  Commit and push changes to `master`

The first time you publish, you’ll also need to:

-  Set GitHub Pages to publish from `master` branch `/docs` folder

([Click here to view GitHub’s Help on how to configure a publishing source for GitHub Pages](https://help.github.com/articles/configuring-a-publishing-source-for-github-pages/#publishing-your-github-pages-site-from-a-docs-folder-on-your-master-branch))

__HOW DOES THIS HAPPEN/WORK?__

Your repo is now set to publish the project’s website from `master` branch `/docs/` folder. The `/docs/` folder is just the chosen theme’s folder renamed.

The `/docs/abracadabra` script invokes pandoc to convert `../README.md` (ie: the `README.md` file in the _parent_ folder) to `./index.html` (ie: to `/docs/index.html`) — which is your single-page website’s index.

These are the key files of the repository:

```nohighlight
/docs/                  <= Theme folder renamed (eg: was 'dinky').
/docs/abracadabra.bat   <= Window script for building website.
/docs/abracadabra.sh    <= Linux version of website building script.
/docs/index.html        <= Website page built from '/README.md'.
                           It’s updated every time you run the
                           'abracadabra' script.
/README.md              <= Repo’s README, the website will mirror its
                           contents in 'index.html'.
```


# Ported Themes

Currently, **5** of the **12** themes (layouts) available on GitHub Page Generator have been ported to **gh-themes-magick**. More themes will be ported soon.

Click on a theme’s thumbnail to see its live preview:


| <h2>Architect</h2>                                           |
| :----------------------------------------------------------: |
| by Jason Long                                                |
| [![Architect][Architect x500]][Architect HTML Prev]          |
| CC-BY 4.0                                                    |


| <h2>Cayman</h2>                                              |
| :----------------------------------------------------------: |
| by Jason Long                                                |
| [![Cayman][Cayman x500]][Cayman HTML Prev]                   |
| CC-BY 4.0                                                    |

                                                     
| <h2>Dinky</h2>                                               |
| :----------------------------------------------------------: |
| by Diana Mounter                                             |
| [![Dinky][Dinky x500]][Dinky HTML Prev]                      |
| CC-BY 3.0                                                    |


| <h2>Leap Day</h2>                                            |
| :----------------------------------------------------------: |
| by Matt Graham                                               |
| [![Leap Day][Leap Day x500]][Leap Day HTML Prev]             |
| CC BY-SA 3.0                                                 |


| <h2>Merlot</h2>                                              |
| :----------------------------------------------------------: |
| by Cameron McEfee                                            |
| [![Merlot][Merlot x500]][Merlot HTML Prev]                   |
| MIT                                                          |


# Unported Themes

The following themes are in the work queue, waiting to be ported. (Click on a theme’s thumbnail to visit its project page.)


| <h2>Midnight</h2>                                            |
| :----------------------------------------------------------: |
| by Matt Graham                                               |
| [![Midnight][Midnight x500]][Midnight Theme]             |
| CC-BY 3.0 + MIT                                              |


| <h2>Minimal</h2>                                             |
| :----------------------------------------------------------: |
| by Steve Smith                                               |
| [![Minimal][Minimal x500]][Minimal Theme]                |
| CC BY-SA 3.0                                                 |


| <h2>Modernist</h2>                                           |
| :----------------------------------------------------------: |
| by Steve Smith                                               |
| [![Modernist][Modernist x500]][Modernist Theme]          |
| CC BY-SA 3.0                                                 |


| <h2>Slate</h2>                                               |
| :----------------------------------------------------------: |
| by Jason Costello                                            |
| [![Slate][Slate x500]][Slate Theme]                      |
| MIT                                                          |


| <h2>Tactile</h2>                                             |
| :----------------------------------------------------------: |
| by Jason Long                                                |
| [![Tactile][Tactile x500]][Tactile Theme]                |
| CC-BY 4.0                                                    |


These last two themes will not be ported into **gh-themes-magick** — the first one’s sources are not available for sharing, the other has no FOSS license attached to its project.


| <h2>Hack</h2>                                                |
| :----------------------------------------------------------: |
| by [Ben Bleikamp][Ben Bleikamp]                                              |
| ![Hack][Hack x500]                                           |
| — no source code found —                                     |
| _license unknown_                                            |


| <h2>Time Machine</h2>                                        |
| :----------------------------------------------------------: |
| by Jon Rohan                                                 |
| [![Time Machine][Time Machine x500]][Time Machine Theme] |
| copyrighted                                                  |


------------------------------------------------------------------------

# Configuration

To configure your project’s website all you have to do is fill-in the variable fields of a single configuration file inside the theme’s folder:

- `configuration.yaml`

It’s all rather self-explaining and intuitive; nonetheless, instructions are provided in comment lines. Here is how the config file looks like:

``` yaml

---
# ^ DON'T REMOVE the "---" above!
# ==============================================================================
#                                 WEBSITE HEADER                                
# ==============================================================================
# These variables are shown in the website header.
# ------------------------------------------------------------------------------
website_title:    'This is the Title shown in the Web page'
website_tagline:  'This is the tagline below the Website Title'
# ==============================================================================
#                                  GITHUB LINKS                                 
# ==============================================================================
# The following variables are used for automagically creating links to your repo
# on GitHub, and for the .zip and .tar download links.
# Substitute sample values with your username and repository name as they appear
# on GitHub (CASE SENSITIVE!!!)
# ------------------------------------------------------------------------------
# Example: https://github.com/tajmone/gh-themes-magick
your_github_username: tajmone
your_github_reponame: gh-themes-magick

# ==============================================================================
#                                   HTML META                                   
# ==============================================================================
# HTML Metadata -- for <head> section
# If you don't need a variable, delete its line or comment it out with a `#`!
# ------------------------------------------------------------------------------
title: 'Dinky Theme — As shown in browser tab and bookmarks'
lang:   en
date:   December 12, 2016
author:
  - Tristano Ajmone
  - Collaborator Name
  - Another Collaborator
description: 'Your project description, to be shown in search engines results.'
keywords:
  - your
  - keywords list
  - for
  - search engines
  - indexing
# ==============================================================================
#                             EXTRA CSS STYLESHEETS                             
# ==============================================================================
# An optional list of extra CSS stylesheets to include from the "/stylesheets/"
# theme's subfolder. Just place your custom stylesheets in that folder and add 
# their filenames to this list.
# DON'T USE ABSOLUTE URLs (ie: "https://" or "http://")!!! If you do it, the
# template will break badly. For includind CSS files with absolute URLs, use the 
# "header-includes:" scalar instead (see below).
# ------------------------------------------------------------------------------
css:
  - your_custom.css
  - another_stylesheet.css
# ==============================================================================
#                        CUSTOM HTML TO INJECT IN HEADER                        
# ==============================================================================
# This optional indented block literal scalar can be used to inject (verbatim)
# raw html at the end of the head section, just before the closing </head> tag.
# This can be used to include CSS with absolute URLs, or JavaScript files -- or
# anything you want, without actually editing the template file.
# ------------------------------------------------------------------------------
header-includes: |
  <!-- anything you put here will go verbatim in the header section
       Useful for adding javascripts, custom metadata, and so on... -->
# ******************************************************************************
# *                             INSERT BEFORE BODY                             *
# ******************************************************************************
# You can inject some extra contents after the opening <body> tag and before the
# contents of your 'README.md' file. It will be parsed as markdown and converted
# to html by pandoc. Use raw html if you need advanced features, but remember
# that all loose text will be enclosed in <p> tags -- wrap it inside a <div> if
# you don't want it parsed as markdown!
# ------------------------------------------------------------------------------
include-before: |
    <!-- anything you put here will go before the opening <body> tag
         (ie: before the README’s contents) Markdown will become HTML  -->
# ******************************************************************************
# *                             INSERT AFTER BODY                              *
# ******************************************************************************
# You can also inject extra contents after those of your 'README.md' file and
# before the closing </body> tag. Same rules as for 'include-before' variable.
# ------------------------------------------------------------------------------
include-after: |
    <!-- anything you put here will go before the closing </body> tag
         (ie: after the README’s contents) Markdown will become HTML  -->
    ---
    # Injected Text
    
    This paragraph, the preceding heading and horizontal ruler were defined in
    the `include-after` string variable inside the YAML configuration file.
    They were injected after the contents of the `README.md` file, and before
    the closing `</body>` tag.
# ------------------------------------------------------------------------------
# DON'T REMOVE the "..." below:
...
```

 
# Syntax Highlighting

**gh-themes-magick** uses [**highlight.js**](https://highlightjs.org) browser library for highlighting code blocks.

Each theme comes with a custom prebuilt version of **highlight.js** (v9.8.0) with 23 commonly used languages:

|                     |                 |
|---------------------|-----------------|
| 1. Apache           | 13. JavaScript  |
| 2. Bash             | 14. Makefile    |
| 3. C\# 15. Markdown | 15. Markdown    |
| 4. C++ 16. Nginx    | 16. Nginx       |
| 5. CSS              | 17. Objective-C |
| 6. CoffeeScript     | 18. PHP         |
| 7. Diff             | 19. Perl        |
| 8. HTML, XML        | 20. Python      |
| 9. HTTP             | 21. Ruby        |
| 10. Ini             | 22. SQL         |
| 11. JSON            | 23. YAML        |
| 12. Java            |                 |

Here are some syntax highlighting previews...

__Apacheconf__

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

__C++__

``` cpp
/* make cpp win deterministically over others with C block comments */
cout << endl;
#include <iostream>

int main(int argc, char *argv[]) {

  /* An annoying "Hello World" example */
  for (auto i = 0; i < 0xFFFF; i++)
    cout << "Hello, World!" << endl;

  char c = '\n';
  unordered_map <string, vector<string> > m;
  m["key"] = "\\\\"; // this is an error

  return -2e3 + 12l;
}
```

__CSS__

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

__diff__

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

*** /path/to/original timestamp
--- /path/to/new      timestamp
***************
*** 1,3 ****
--- 1,9 ----
+ This is an important
+ notice! It should
+ therefore be located at
+ the beginning of this
+ document!

! compress the size of the
! changes.

  It is important to spell
```

__HTML__

``` html
<!DOCTYPE html>
<title>Title</title>

<style>body {width: 500px;}</style>

<script type="application/javascript">
  function $init() {return true;}
</script>

<body>
  <p checked class="title" id='title'>Title</p>
  <!-- here goes the rest of the page -->
</body>
```
__.ini__

``` ini
; boilerplate
[package]
name = "some_name"
authors = ["Author"]
description = "This is \
a description"

[[lib]]
name = ${NAME}
default = True
auto = no
counter = 1_000
```


__Python__

``` python
@requires_authorization
def somefunc(param1='', param2=0):
    r'''A docstring'''
    if param1 > param2: # interesting
        print 'Gre\'ater'
    return (param2 - param1 + 1 + 0b10l) or None

class SomeClass:
    pass

>>> message = '''interpreter
... prompt'''
```






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

[Architect x500]:    ../../images/themes-thumbs/500/architect.gif     "Architect theme screenshot"
[Cayman x500]:       ../../images/themes-thumbs/500/cayman.gif        "Cayman theme screenshot"
[Dinky x500]:        ../../images/themes-thumbs/500/dinky.gif         "Dinky theme screenshot"
[Hack x500]:         ../../images/themes-thumbs/500/hack.gif          "Hack theme screenshot"
[Leap Day x500]:     ../../images/themes-thumbs/500/leapday.gif       "Leap Day theme screenshot"
[Merlot x500]:       ../../images/themes-thumbs/500/merlot.gif        "Merlot theme screenshot"
[Midnight x500]:     ../../images/themes-thumbs/500/midnight.gif      "Midnight theme screenshot"
[Minimal x500]:      ../../images/themes-thumbs/500/minimal.gif       "Minimal theme screenshot"
[Modernist x500]:    ../../images/themes-thumbs/500/modernist.gif     "Modernist theme screenshot"
[Slate x500]:        ../../images/themes-thumbs/500/slate.gif         "Slate theme screenshot"
[Tactile x500]:      ../../images/themes-thumbs/500/tactile.gif       "Tactile theme screenshot"
[Time Machine x500]: ../../images/themes-thumbs/500/timemachine.gif   "Time Machine theme screenshot"

[Architect HTML Prev]:      https://cdn.rawgit.com/tajmone/gh-themes-magick/baf5927/gh-themes/architect/index.html    "Architect theme live preview"
[Cayman HTML Prev]:         https://cdn.rawgit.com/tajmone/gh-themes-magick/baf5927/gh-themes/cayman/index.html       "Cayman theme live preview"
[Dinky HTML Prev]:          https://cdn.rawgit.com/tajmone/gh-themes-magick/baf5927/gh-themes/dinky/index.html        "Dinky theme live preview"
[Hack HTML Prev]:           https://cdn.rawgit.com/tajmone/gh-themes-magick/baf5927/gh-themes/hack/index.html         "Hack theme live preview"
[Leap Day HTML Prev]:       https://cdn.rawgit.com/tajmone/gh-themes-magick/baf5927/gh-themes/leapday/index.html      "Leap Day theme live preview"
[Merlot HTML Prev]:         https://cdn.rawgit.com/tajmone/gh-themes-magick/baf5927/gh-themes/merlot/index.html       "Merlot theme live preview"
[Midnight HTML Prev]:       https://cdn.rawgit.com/tajmone/gh-themes-magick/baf5927/gh-themes/midnight/index.html     "Midnight theme live preview"
[Minimal HTML Prev]:        https://cdn.rawgit.com/tajmone/gh-themes-magick/baf5927/gh-themes/minimal/index.html      "Minimal theme live preview"
[Modernist HTML Prev]:      https://cdn.rawgit.com/tajmone/gh-themes-magick/baf5927/gh-themes/modernist/index.html    "Modernist theme live preview"
[Slate HTML Prev]:          https://cdn.rawgit.com/tajmone/gh-themes-magick/baf5927/gh-themes/slate/index.html        "Slate theme live preview"
[Tactile HTML Prev]:        https://cdn.rawgit.com/tajmone/gh-themes-magick/baf5927/gh-themes/tactile/index.html      "Tactile theme live preview"
[Time Machine HTML Prev]:   https://cdn.rawgit.com/tajmone/gh-themes-magick/baf5927/gh-themes/timemachine/index.html  "Time Machine theme live preview"



[Ben Bleikamp]:   https://github.com/bleikamp
[Cameron McEfee]: https://github.com/cameronmcefee  
[Diana Mounter]:  https://github.com/broccolini     
[Jason Costello]: https://github.com/jasoncostello
[Jason Long]:     https://github.com/jasonlong      
[Jon Rohan]:      https://github.com/jonrohan
[Matt Graham]:    https://github.com/mattgraham     
[Steve Smith]:    https://github.com/orderedlist

[CCBY4]:          https://creativecommons.org/licenses/by/4.0/
[CCBY3]:          https://creativecommons.org/licenses/by/3.0/
[MIT Leap Day]:   https://github.com/mattgraham/leapday/blob/master/LICENCE
[MIT Merlot]:     https://github.com/cameronmcefee/merlot/blob/master/LICENSE

