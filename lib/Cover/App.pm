package Cover::App;
use Dancer ':syntax';

our $VERSION = '0.1';

get '/' => sub {
	my $x = rand;
	my $y = rand;
	if ($x < $y) {
		my $z = add($x, $y);
	} else {
		my $z = add($y, $x);
	}
    template 'index';
};

sub add {
	my ($q, $w) = @_;
	my $sum = $q+$w;
	return $sum;
}

true;
