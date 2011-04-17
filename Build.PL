use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Crypt::Random::NonBlocking',
    license             => 'perl',
    dist_author         => 'David Dick <ddick@cpan.org>',
    dist_version_from   => 'lib/Crypt/Random/NonBlocking.pm',
    requires => {
        'Test::More' => 0,
	'Carp'       => 0,
	'English'    => 0,
	($^O eq 'MSWin32') ? ( 'Win32::API' => 0 ) : ( 'FileHandle' => 0 ),
    },
    add_to_cleanup      => [ 'Crypt-Random-NonBlocking-*' ],
);

$builder->create_build_script();
