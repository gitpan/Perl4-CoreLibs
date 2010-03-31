=head1 NAME

Perl4::CoreLibs - libraries historically supplied with Perl 4

=head1 DESCRIPTION

This is a collection of C<.pl> files that have historically been bundled
with the Perl core but are now deprecated.  This entire approach to
libraries was largely superseded in Perl 5.000 by the system of module
namespaces and C<.pm> files.  Most of the libraries in this collection
predate Perl 5.000, but a handful were first introduced in that version.
Functionally, most have been directly superseded by modules in the Perl
5 style.  They should not be used by new code.

Most of these libraries have not been substantially maintained in the
course of Perl 5 development.  They are now very antiquated in style,
making no use of the language facilities introduced since Perl 4.
They should therefore not be used as programming examples.

This collection exists to support old Perl programs that use the old
libraries.  By packaging them separately from the Perl core, the core
is freed from the need to keep and support them.

=cut

package Perl4::CoreLibs;

use warnings;
use strict;

our $VERSION = "0.000";

=head1 AUTHOR

Known contributing authors for the libraries in this package are
Brandon S. Allbery, John Bazik, Tom Christiansen <tchrist@convex.com>,
Charles Collins, Joe Doupnik <JRD@CC.USU.EDU>, Marion Hakanson
<hakanson@cse.ogi.edu>, Waldemar Kebsch <kebsch.pad@nixpbe.UUCP>,
Lee McLoughlin <lmjm@doc.ic.ac.uk>, <A.Macpherson@bnr.co.uk>, Randal
L. Schwartz <merlyn@stonehenge.com>, Aaron Sherman <asherman@fmrco.com>,
Wayne Thompson, Larry Wall <lwall@jpl-devvax.jpl.nasa.gov>, and Ilya
Zakharevich.  (Most of these email addresses are probably out of date.)

Andrew Main (Zefram) <zefram@fysh.org> built the Perl4::CoreLibs package.

=head1 COPYRIGHT

Copyright (C) 1987-2009 Larry Wall et al

Copyright (C) 2010 Andrew Main (Zefram) <zefram@fysh.org>

=head1 LICENSE

This module is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut

1;
