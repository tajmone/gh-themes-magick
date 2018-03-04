@ECHO OFF
ECHO ==============================================================================
ECHO :: Architect Theme :: updating website.
pandoc --no-highlight ^
       --lua-filter=task-list.lua ^
       --from       markdown_github+smart+yaml_metadata_block+auto_identifiers ^
       --to         html5 ^
       --template   ./architect.template ^
       --output     ./index.html ^
       ../README.md ./configuration.yaml