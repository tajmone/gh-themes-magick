# Pandoc v2 Porting Notes

Notes and TODOs related to porting __gh-themes-magick__ to pandoc `v2.x`.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="true" lowercase_only_ascii="true" uri_encoding="true" depth="3" -->

- [Introduction](#introduction)
- [General Fixes](#general-fixes)
- [Pandoc 2 Fixes](#pandoc-2-fixes)
    - [New GFM Format](#new-gfm-format)
    - [Pandoc Invocation Options](#pandoc-invocation-options)
- [Updates](#updates)
    - [Syntax Highligthing](#syntax-highligthing)
        - [Highlight.js](#highlightjs)
- [TODO IMPROVEMENTS](#todo-improvements)

<!-- /MarkdownTOC -->

-----

# Introduction

In order to work with pandoc v2 __gh-themes-magick__ needs some fixing in the invocation scripts, and checking is the templates might need fixing to.

Also, I'll take the opportunity and update the project as well.

# General Fixes

- [x] Add `.gitignore`
- [x] Add `.gitattributes`
- [ ] GH-PAGES Webiste:
    - [ ] Change HTML previews from `https://cdn.rawgit.com` to `http://htmlpreview.github.io/` — DOESN'T WORK

# Pandoc 2 Fixes

- [X] Add `task-list.lua` filter to support GFM Task Lists:
    + [X] `docs/task-list.lua`
    + [X] `gh-themes/architect/task-list.lua`
    + [X] `gh-themes/cayman/task-list.lua`
    + [X] `gh-themes/dinky/task-list.lua`
    + [X] `gh-themes/leapday/task-list.lua`
    + [X] `gh-themes/merlot/task-list.lua`
 
## New GFM Format

The problem with the `gfm` format is that it doesn't support YAML extension:



> Note, however, that `commonmark` and `gfm` have limited support for extensions. Only those listed below (and smart and raw_tex) will work. The extensions can, however, all be individually disabled. Also, `raw_tex` only affects `gfm` output, not input.
> 
> #### `gfm` (GitHub-Flavored Markdown)
> 
> `pipe_tables`, `raw_html`, `fenced_code_blocks`, `auto_identifiers`, `ascii_identifiers`, `backtick_code_blocks`, `autolink_bare_uris`, `intraword_underscores`, `strikeout`, `hard_line_breaks`, `emoji`, `shortcut_reference_links`, `angle_brackets_escapable`.
> 
> - http://pandoc.org/MANUAL.html#markdown-variants

## Pandoc Invocation Options

Fix pandoc invocation option in all scripts, from:
```
pandoc ---smart --wrap=none --normalize --section-divs --no-highlight ^
       --from       markdown_github-hard_line_breaks+yaml_metadata_block ^
```

... to:

```
pandoc --no-highlight --section-divs ^
       --from gfm+smart+yaml_metadata_block ^
```

... in the following scripts:

- [ ] `docs/abracadabra.bat` (no `-section-divs` option)
- [ ] `docs/abracadabra.sh` (no `-section-divs` option)
- [ ] `gh-themes/architect/abracadabra.bat`
- [ ] `gh-themes/architect/abracadabra.sh`
- [ ] `gh-themes/cayman/abracadabra.bat`
- [ ] `gh-themes/cayman/abracadabra.sh`
- [ ] `gh-themes/dinky/abracadabra.bat`
- [ ] `gh-themes/dinky/abracadabra.sh`
- [ ] `gh-themes/global-spell.bat`
- [ ] `gh-themes/leapday/abracadabra.bat` (no `-section-divs` option)
- [ ] `gh-themes/leapday/abracadabra.sh` (no `-section-divs` option)
- [ ] `gh-themes/merlot/abracadabra.bat`
- [ ] `gh-themes/merlot/abracadabra.sh`


```
pandoc --wrap=none -f gfm+smart -t gfm -o "%~1" "%~1"
```

# Updates

## Syntax Highligthing

I must decide if keep using HLJS or use pandoc highlighter instead.

If I keep HLJS locally I must update all the local prebuilds; else I can link to the online version.

If I choose to use pandoc's highlighter, I'll need to make SASS highlight theme for all GH Themes.

### Highlight.js

- [ ] Update HLJS prebuilt packages: Version `9.12.0` (2017-05-30)
- [ ] `README.md`: update HLJS version referenced
- [ ] `README.md`: update HLJS number of supported langs

# TODO IMPROVEMENTS

Now that pandoc v2 is supported, I should update all the themes to support more styles via the new DIV syntax. Basically, I'll need to add some CSS to support:

- [ ] GFM Alerts
- [ ] Keystrokes
- [ ] etc

For this I should integrate SASS versions of the GH Themes, and tweak them. Some Themes already have SASS sources, others don't; so, for those who don't I'll need to port their CSS to SCSS.


