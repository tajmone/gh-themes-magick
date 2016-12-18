@ECHO OFF
ECHO ==============================================================================
ECHO :: Cayman Theme :: updating website.
pandoc --smart --wrap=none --normalize --no-highlight ^
       --from       markdown_github-hard_line_breaks+yaml_metadata_block ^
       --to         html5 ^
       --template   ./cayman.template ^
       --output     ./index.html ^
       ../README.md ./configuration.yaml