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
        'version'    => 0,
    },
    add_to_cleanup      => [ 'Crypt-Random-NonBlocking-*' ],
);

$builder->create_build_script();
