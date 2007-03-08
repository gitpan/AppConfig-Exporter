#!perl -T

use Test::More tests => 3;

BEGIN {
    unshift @INC, q(./t);
    use_ok( 'TestConfig', qw(one two) );
}

is($one{Pear}, 'yellow', 'data');
is(ref $two{Cars}, 'ARRAY', 'Config Options');
