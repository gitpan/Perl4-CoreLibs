use warnings;
use strict;

use Test::More tests => 12;

require "shellwords.pl";

my $unmatched_quote;

$SIG{__WARN__} = sub {
	if($_[0] =~ /\AUnmatched double quote/) {
		$unmatched_quote = 1;
	} else {
		die "WARNING: $_[0]";
	}
};

my(@words, $string, $result);

$unmatched_quote = 0;
@words = &shellwords(qq(foo "bar quiz" zoo));
is($words[0], 'foo');
is($words[1], 'bar quiz');
is($words[2], 'zoo');
ok !$unmatched_quote;

# Now test error return
$unmatched_quote = 0;
$string = 'foo bar baz"bach blech boop';
@words = &shellwords($string);
is(@words, 0);
ok $unmatched_quote;

# missing quote after matching regex used to hang after change #22997
$unmatched_quote = 0;
"1234" =~ /(1)(2)(3)(4)/;
$string = qq{"missing quote};
$result = join('|', &shellwords($string));
is($result, "");
ok $unmatched_quote;

# make sure shellwords strips out leading whitespace and trailng undefs
# from parse_line, so it's behavior is more like /bin/sh
$unmatched_quote = 0;
$result = join('|', &shellwords(" aa \\  \\ bb ", " \\  ", "cc dd ee\\ "));
is($result, "aa| | bb| |cc|dd|ee ");
ok !$unmatched_quote;

$SIG{ALRM} = sub {die "Timeout!"};
alarm(3);
$unmatched_quote = 0;
@words = &shellwords("foo\\");
is(@words, 1);
ok !$unmatched_quote;
alarm(0);

1;
