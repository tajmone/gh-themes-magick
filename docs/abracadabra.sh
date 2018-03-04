#!/bin/sh
echo  ==============================================================================
echo  :: Leap Day Theme :: updating website.
# NOTE: Don't use the "--section-divs" option with this theme!!!
pandoc  --no-highlight \
        --lua-filter=task-list.lua \
        --from       markdown_github+smart+yaml_metadata_block+auto_identifiers \
        --to         html5 \
        --template   ./leapday.template \
        --output     ./index.html \
        ./configuration.yaml \
        ../README.md
