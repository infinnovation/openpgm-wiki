#!/usr/bin/perl
#=======================================================================
#       First save page from Firefox as list.html to get page links
#       (need to have run javascript to have populated page).
#       The URLs to fetch them were found using Firefox Tools ->
#       Web Developer -> Network
#=======================================================================
use strict;

open(LIST,'<','list.html')
    or die "Cannot open list.html: $!\n";
while (<LIST>) {
    if (my($topic) = m!<a href=".*/(\w+)\.wiki"!) {
        print "$topic\n";
        system 'wget','-O',"$topic.md","https://www.googleapis.com/storage/v1/b/google-code-archive/o/v2%2Fcode.google.com%2Fopenpgm%2Fwiki%2F$topic.wiki?alt=media";
    }
}
