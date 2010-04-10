use warnings;
use strict;

require "abbrev.pl";

print "1..3\n";

our %x;
my @z = qw(list edit send abort gripe listen);
&abbrev(*x, @z);
my $r = join ':', sort keys %x; 
print "not " if exists $x{'l'}   ||
                exists $x{'li'}  ||
                exists $x{'lis'};
print "ok 1\n";

print "not " unless $x{'list'}   eq 'list' &&
                    $x{'liste'}  eq 'listen' &&
                    $x{'listen'} eq 'listen';
print "ok 2\n";

print "not " unless $x{'a'}     eq 'abort' &&
                    $x{'ab'}    eq 'abort' &&
                    $x{'abo'}   eq 'abort' &&
                    $x{'abor'}  eq 'abort' &&
                    $x{'abort'} eq 'abort';
print "ok 3\n";

1;
