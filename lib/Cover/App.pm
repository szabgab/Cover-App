package Cover::App;
use Dancer ':syntax';

our $VERSION = '0.1';

hook before => sub {
	debug('before');
	my $x = rand;
	if ($x < 0.5) {
		$x = rand;
	} else {
		$x = rand;
	}
};

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
