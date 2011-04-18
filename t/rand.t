use Test::More tests => 2;
use Crypt::Random::NonBlocking();

ok(length(Crypt::Random::NonBlocking::urandom(500)) == 500, 'Crypt::Random::NonBlocking::urandom(500) called successfully');
ok(length(Crypt::Random::NonBlocking::urandom(50)) == 50, 'Crypt::Random::NonBlocking::urandom(50) called successfully');
