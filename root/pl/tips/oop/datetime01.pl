#!/usr/bin/perl
use strict;
use warnings;
use DateTime;
use DBI;
use Email::Sender::Simple qw(sendmail);
use Email::Simple;
use Email::Simple::Creator;
use Email::Sender::Transport::SMTP;
use utf8;
use Encode;
use Data::Dumper;
use Class::C3;
#ここまでで複数時間を指定してメールを時間に送信できる。

#DBからselect してmemoと時間を指定するだけ。

my $dt = DateTime->now( time_zone => 'Asia/Tokyo' );
print $dt->strftime("%Y/%m/%d %H:%M:00") ,"\n";

my $dt_plus1min = DateTime->now( time_zone => 'Asia/Tokyo' );

$dt_plus1min->add( minutes => 1 );
#print "\ndtnow:$dtnow\n";
print "dt_plus1min:$dt_plus1min\n";



=POD

my @weekly = ('Sun', 'Mon', 'Tue', 'Wed', 'Thr', 'Fri', 'Sut'); # 表示したい曜日文字
print "now day:",$weekly[$wday],"\n"; # 曜日を表示

#時が1桁の場合
if(0 <= $hour && $hour <= 9){
    $hour = "0".$hour;
}

#分が1桁の場合
if(0 <= $min && $min <= 9){
    $min = "0".$min;

}
print "current time:$hour:$min\n";


=CUT

=head1 aaaa
aaaaaaa

=cut
