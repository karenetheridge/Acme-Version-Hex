use strict;
use warnings;

use Test::More;
use if $ENV{AUTHOR_TESTING}, 'Test::Warnings';
use Module::Metadata;

my $mmd = Module::Metadata->new_from_module('Acme::Version::Hex');

#use Data::Dumper;
#print Dumper($mmd);

is_deeply(
    [ sort $mmd->packages_inside ],
    [ 'Acme::Version::Hex', 'main' ],
    'Module::Metadata correctly extracted the package',
);

require Acme::Version::Hex;
is($mmd->version, Acme::Version::Hex->VERSION, 'Module::Metadata correctly extracted the version');

done_testing;
