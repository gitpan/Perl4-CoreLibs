use warnings;
use strict;

require "hostname.pl";

my $host = eval { &hostname };

if ($@) {
    print "1..0\n" if $@ =~ /Cannot get host name/;
} else {
    print "1..1\n";
    print "# \$host = `$host'\n";
    print "ok 1\n";
}

1;
