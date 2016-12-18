@ECHO OFF
ECHO ==============================================================================
ECHO :: Leap Day Theme :: updating website.
pandoc --smart --wrap=none --normalize --no-highlight ^
       --from       markdown_github-hard_line_breaks+yaml_metadata_block ^
       --to         html5 ^
       --template   ./leapday.template ^
       --output     ./index.html ^
       ../README.md ./configuration.yaml