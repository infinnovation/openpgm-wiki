#!/bin/sh
#=======================================================================
#       Convert image links to be relative to down
#=======================================================================
for md in *.md; do
    perl -pi -e 's!http://miru.hk/wiki/!img/!g' $md
done
