use strict;
use warnings;
package Acme::Version::Hex;
# ABSTRACT: a module that declares its $VERSION in hexadecimal
# KEYWORDS: version hexadecimal hex toolchain module
# vim: set ts=8 sts=4 sw=4 tw=78 et :

use 5.021003;

our $VERSION = 0x1p-10; $VERSION = eval $VERSION;

1;
__END__

=pod

=head1 SYNOPSIS

    use Acme::Version::Hex;

    my $version = Acme::Version::Hex->VERSION;

=head1 DESCRIPTION

This module demonstrates the use of a floating point hexadecimal number in its
C<$VERSION>.

Support for hexadecimal floating point literals (like C<0x1.23p-4>) was added
in L<perl5213delta|perl 5 version 21.3>. This distribution is a test of the
toolchain's ability to deal with this version, either in recent perl versions
or earlier.

=head1 SUPPORT

=for stopwords irc

Bugs may be submitted through L<the RT bug tracker|https://rt.cpan.org/Public/Dist/Display.html?Name=Acme-Version-Hex>
(or L<bug-Acme-Version-Hex@rt.cpan.org|mailto:bug-Acme-Version-Hex@rt.cpan.org>).
I am also usually active on irc, as 'ether' at C<irc.perl.org>.

=head1 SEE ALSO

=for :list
* L<perl5213delta>

=cut
