{ use 5.006; }
use warnings;
use strict;

use Module::Build;

my $build = Module::Build->new(
	module_name => "Perl4::CoreLibs",
	dist_version => "0.000",
	license => "perl",
	dist_author => [
		"Brandon S. Allbery",
		"John Bazik",
		"Tom Christiansen <tchrist\@convex.com>",
		"Charles Collins",
		"Joe Doupnik <JRD\@CC.USU.EDU>",
		"Marion Hakanson <hakanson\@cse.ogi.edu>",
		"Waldemar Kebsch <kebsch.pad\@nixpbe.UUCP>",
		"Lee McLoughlin <lmjm\@doc.ic.ac.uk>",
		"<A.Macpherson\@bnr.co.uk>",
		"Randal L. Schwartz <merlyn\@stonehenge.com>",
		"Aaron Sherman <asherman\@fmrco.com>",
		"Wayne Thompson",
		"Larry Wall <lwall\@jpl-devvax.jpl.nasa.gov>",
		"Ilya Zakharevich",
		"Andrew Main (Zefram) <zefram\@fysh.org>",
	],
	configure_requires => {
		"Module::Build" => 0,
		"perl" => "5.006",
	},
	build_requires => {
		"Module::Build" => 0,
		"Test::More" => 0,
		"perl" => "5.006",
		"strict" => 0,
		"warnings" => 0,
	},
	requires => {
		"File::Find" => 0,
		"Getopt::Long" => 0,
		"IPC::Open2" => 0,
		"IPC::Open3" => 0,
		"Socket" => 0,
		"Text::ParseWords" => 0,
		"Time::Local" => 0,
		"perl" => "5.006",
		"strict" => 0,
		"warnings" => 0,
		"warnings::register" => 0,
	},
	dynamic_config => 0,
	meta_add => { distribution_type => "module" },
	create_makefile_pl => "passthrough",
	sign => 1,
);
$build->add_build_element("pl");
$build->create_build_script;

1;
