#!/usr/bin/perl

sub check_required_items {
	my $who = shift;
	my $items = shift;
	my %whose_items = map { $_, 1 } @$items;
	my @required = qw(preserver sunscreen water_bottle jacket);
	my @missing = ( );
	for my $item (@required) {
		unless ( $whose_items{$item} ) { # not found in list?
		print "$who is missing $item.\n";
		push @missing, $item;
		}
	}

	if (@missing) {
		print "Adding @missing to @$items for $who.\n";
		push @$items, @missing;
	}
}

my @gilligan = qw(shirt trousers compass);
#check_required_items("The Gilligan",\@gilligan);

my @gilligan = qw(shirt trousers compass);
my @skipper  = qw(wristwatch sunscreen trousers);
my @professor= qw(glasses notebook pencil);

my %all = (
	Gilligan => \@gilligan,
	Skipper  => \@skipper,
	Professor => \@professor,
);
# Exercise 4.2 Not the cleanest implementation, but it worked first try!
sub check_items_for_all {
	
	my $allref = shift;
	foreach my $who (keys %{$allref}) {
		check_required_items($who, %{allref}{$who});	
	}



}

check_items_for_all(\%all);

