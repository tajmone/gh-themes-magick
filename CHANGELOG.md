# CHANGELOG

GitHub Pages Themes Magick changelog.

- https://github.com/tajmone/gh-themes-magick


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="true" lowercase_only_ascii="true" uri_encoding="true" depth="3" -->

- [gh-themes-magick v2](#gh-themes-magick-v2)
- [gh-themes-magick v1](#gh-themes-magick-v1)

<!-- /MarkdownTOC -->

-----


# gh-themes-magick v2

- `v2.0.0` — __2018/03/03__
    + Updated all scripts to work with pandoc v2 (`v2.1.1`)
    + Added pandoc Lua filter ["`task-list.lua`"][Task-List Lua] to allow support for GFM style Task Lists (script was modified to disable CSS injection and prevent conflicts with "`header-includes`" in YAML headers). Taken from [lua-filters] projects, MIT License.
    + Updated `LICENSE` files to include credits and license of "`task-list.lua`".
    + Themes' CSS tweaks:
        * Tweaked all themes' CSS to add correct support for Task-Lists.
        * Tweaked "Leap Day" and "Merlot" themes' CSS to fix issues with Task-Lists.
        * Tweaked "Dinky" theme's CSS to fix lists margins splling to the left.
- Update Live HTML Preview links.

# gh-themes-magick v1

- `v1.0.0` — __2018/03/03__
    + General cleanup of __gh-themes-magick__ (for pandoc v1) before updating it to work with pandoc v2:
        * Add `.gitignore` settings to project.
        * Add `.gitattributes` settings to project.
        * **highlight.js**:
            - update bundled HLJS packages to `9.12.0`.
            - add `Shell Session` syntax to custom package.

Before any tagged releases:

- __2016/12/18__
    + First version published:
        * Pandoc `v1.19.1`
- __2016/12/14__
    + Project creation

[lua-filters]: https://github.com/pandoc/lua-filters "Visit the 'lua-filters' repository" 
[Task-List Lua]: https://github.com/pandoc/lua-filters/tree/master/task-list "Visit the project page of 'task-list.lua' filter" 