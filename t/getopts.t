use warnings;
use strict;

use Test::More tests => 10;

require "getopts.pl";

our($opt_f, $opt_h, $opt_i, $opt_k, $opt_o);

$opt_o = $opt_i = $opt_f = undef;
@ARGV = qw(-foi -i file);

ok( &Getopts('oif:'),		'Getopts succeeded (1)' );
is( "@ARGV", 'file',		'options removed from @ARGV (3)' );
ok( $opt_i && $opt_f eq 'oi',	'options -i and -f correctly set' );
ok( !defined $opt_o,		'option -o not set' );

$opt_h = $opt_i = $opt_k = undef;
@ARGV = qw(-hij -k p -- -l m);

ok( &Getopts('hi:kl'),		'Getopts succeeded (2)' );
is( "@ARGV", 'p -- -l m',	'options removed from @ARGV (4)' );
ok( $opt_h && $opt_k,		'options -h and -k set' );
is( $opt_i, 'j',		q/option -i is 'j'/ );

SKIP: {
	skip "can't capture stderr", 2 unless "$]" >= 5.008;
	my $warning;
	close(STDERR);
	open(STDERR, ">", \$warning);
	@ARGV = qw(-h help);
	ok( !Getopts("xf:y"),		'Getopts fails for an illegal option' );
	ok( $warning eq "Unknown option: h\n", 'user warned' );
}

1;
