use Test::More tests => 2;
use Crypt::Random::NonBlocking();

my ($cryptnb) = Crypt::Random::NonBlocking->new();
ok($cryptnb, 'Crypt::Random::NonBlocking->new() called successfully');
ok(length($cryptnb->get(50)) == 50, 'Crypt::Random::NonBlocking->get(50) called successfully');
