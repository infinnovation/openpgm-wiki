#!/usr/bin/perl
#=======================================================================
#       Search Markdown files for image links and fetch them
#=======================================================================
use strict;

my %seen;
opendir(DIR,'.');
foreach my $f (readdir(DIR)) {
    next unless $f =~ /\.md$/;
    open(MD,'<',$f)
        or die "Cannot open list.html: $!\n";
    while (<MD>) {
        while (m!\G.*?\bhttp://miru\.hk/wiki/([^\/\.]+\.png)\b!g) {
            my $png = $1;
            unless ($seen{$png}) {
                print "$png\n";
                $seen{$png} = 1;
                if (! -f "img/$png") {
                    system 'wget','-O',"img/$png","http://miru.hk/wiki/$png";
                }
            }
        }
    }
    close(MD);
}
closedir(DIR);
