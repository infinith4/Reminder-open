package MyClass;

use strict;
use warnings;
use base qw/Class::Accessor::Fast/;

__PACKAGE__->mk_accessors(qw/ address blog /);

1;
__END__
