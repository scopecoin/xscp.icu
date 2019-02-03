#!/env/bin/bash

while true; do bundle exec jekyll build; scp -r _site trouble@xscp.icu:~/Projects/XSCP/xscp.icu/; done

