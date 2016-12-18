@ECHO OFF
ECHO ==============================================================================
ECHO :: Architect Theme :: updating website.
pandoc --smart --wrap=none --normalize --no-highlight ^
       --from       markdown_github-hard_line_breaks+yaml_metadata_block ^
       --to         html5 ^
       --template   ./architect.template ^
       --output     ./index.html ^
       ../README.md ./configuration.yaml