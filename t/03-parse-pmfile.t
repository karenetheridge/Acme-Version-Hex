use strict;
use warnings;

use Test::More;

plan skip_all => 'this test requires a META.json file' if not -e 'META.json';

use if $ENV{AUTHOR_TESTING}, 'Test::Warnings';
use CPAN::Meta;
use Parse::PMFile;

my $metadata = CPAN::Meta->load_file('META.json');

my $pmparser = Parse::PMFile->new($metadata);
my $packages_info = $pmparser->parse('lib/Acme/Version/Hex.pm');

#use Data::Dumper;
#print Dumper($packages_info);

is_deeply(
    [ keys %$packages_info ],
    [ 'Acme::Version::Hex' ],
    'Parse::PMFile correctly extracted the package',
);

require Acme::Version::Hex;
is(
    $packages_info->{'Acme::Version::Hex'}{version},
    Acme::Version::Hex->VERSION,
    'Parse::PMFile correctly extracted the version',
);

done_testing;
