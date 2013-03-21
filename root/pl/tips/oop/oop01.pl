use strict;
use warnings;

my $obj;
my $hiki = shift;

if ($hiki eq '1') {
    $obj = Otokonoko->new();
}
else {
    $obj = Onnanoko->new();
}
print $obj->getName(), "\n";
$obj->shumi();


package Person;
sub new {
    my $class = shift;
    my $self = {
        Name => $class,
    };
    return bless $self, $class;
}
sub getName {};

package Otokonoko;
use base 'Person';
sub getName {
    my $self = shift;
    return $self->{Name};
}
sub shumi {
    print "バスケ\n";
}


package Onnanoko;
use base 'Person';
sub getName {
    my $self = shift;
    return $self->{Name};
}
sub shumi {
    print "ケーキ作り\n";
}
