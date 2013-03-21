#!/usr/bin/perl

use strict;
use warnings;
use MyClass;
use Perl6::Say;

my $obj = MyClass->new({
    address => 'tokyo',
    blog    => 'wordpress',
                       });

say $obj->address;
say $obj->blog;

$obj->address('obihiro');
$obj->blog('mt');
say $obj->address;
say $obj->blog;
