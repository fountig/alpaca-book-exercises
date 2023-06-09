#!/usr/bin/perl
#
my %gilligan_info = (
		name => 'Gilligan',
		hat => 'White',
		shirt => 'Red',
		position => 'First Mate',
		location => 'The Island'
);
my %skipper_info = (
	name => 'Skipper',
	hat => 'Black',
	shirt => 'Blue',
	position => 'Captain',
	location => 'The Island'
);

my @crew = (\%gilligan_info, \%skipper_info);
my $format = "%-15s %-7s %-7s %-15s %-15s\n";
printf $format, qw(Name Shirt Hat Position Location);

foreach my $crewmember (@crew) {
	if ($crewmember->{'name'} eq 'Gilligan') {
		$crewmember->{'location'} = 'The Island Country Club';
	}

	printf $format,
	$crewmember->{'name'},
	$crewmember->{'shirt'},
	$crewmember->{'hat'},
	$crewmember->{'position'},
	$crewmember->{'location'};
}



