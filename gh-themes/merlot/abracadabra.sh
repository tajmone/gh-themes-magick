#!/bin/sh
echo  ==============================================================================
echo  :: Merlot Theme :: updating website.
pandoc  --no-highlight \
        --lua-filter=task-list.lua \
        --from       markdown_github+smart+yaml_metadata_block+auto_identifiers \
        --to         html5 \
        --template   ./merlot.template \
        --output     ./index.html \
        ../README.md ./configuration.yaml
