
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile being created.
WriteMakefile(
	'NAME' => 'Getopt::Tiny',
	'DISTNAME' => 'Getopt-Tiny',
	'VERSION_FROM' => 'lib/Getopt/Tiny.pm',
	($] >= 5.005 ?
	    ('ABSTRACT' => 'Parse arguments with very little code',
	     'AUTHOR'	=> 'David Muir Sharnoff <muir@idiom.com>') : ()),
	'dist'   => {COMPRESS=>'gzip', SUFFIX=>'gz'}
);

package MY;

sub postamble {
    <<"END_OF_POSTAMBLE";

pm_to_blib: README

README: lib/Getopt/Tiny.pod
\tpod2text lib/Getopt/Tiny.pod >README

END_OF_POSTAMBLE
}
