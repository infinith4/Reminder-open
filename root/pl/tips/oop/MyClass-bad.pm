#MyClass.pm

package MyClass;

use strict;
use warnings;

sub new {
    my ($class, $args) = @_;
    my $self = {
        address => $args{address},
        blog       => $args{blog},
    };
    return bless $self, $class;
}

sub address {
    my ($self, $address) = @_; 
    if ($address){
        $self->{address} = $address;
    }   
    return $self->{address};
}

sub blog {
    my ($self, $blog) = @_; 
    if ($blog){
        $self->{blog} = $blog;
    }   
    return $self->{blog};
}

1;
__END__
