package Schedulesendmail;
use base Exporter;          # use Exporter; our @ISA = qw(Exporter); と等価
our @EXPORT = qw(&sumx);
sub sumx {
    return $_[0]+$_[1]; # 渡された引数２つを加えて返す処理
}
1;
