use warnings;
use strict;

use Test::More tests => 6;

require "getopt.pl";

our($opt_f, $opt_h, $opt_i, $opt_l, $opt_o, $opt_x, $opt_y);

@ARGV = qw(-xo -f foo -y file);
&Getopt('f');

is( "@ARGV", 'file',		'options removed from @ARGV (1)' );
ok( $opt_x && $opt_o && $opt_y, 'options -x, -o and -y set' );
is( $opt_f, 'foo',		q/option -f is 'foo'/ );

@ARGV = qw(-hij k -- -l m -n);
&Getopt('il');

is( "@ARGV", 'k -- -l m -n',	'options removed from @ARGV (2)' );
ok( $opt_h && $opt_i eq 'j',	'option -h and -i correctly set' );
ok( !defined $opt_l,		'option -l not set' );

1;
