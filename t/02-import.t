#!perl -T

use Test::More tests => 2;

BEGIN {
    unshift @INC, q(./t);
    use_ok( 'TestConfig', 'one' );
}

is($one{Pear}, 'yellow', 'data');
