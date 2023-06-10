#!/usr/bin/perl

use warnings;
# This will generate 'Reference found where even-sized list expected' due to the use of braces in the
# hash definition instead of parentheses. You use braces when you pass an anonymous hash reference like so:
#
#
# my $anon_hash_ref = { ... };
#
my %passenger_1 = { 
	name 		=> 'Ginger', 
	age  		=> 22,
	occupation	=> 'Movie Star',
	real_age 	=> 35,
	hat		=> undef,
	};

my %passenger_2 = {
	name		=> 'Mary Ann',
	age		=> 19,
	hat		=> 'bonnet',
	favorite_food	=> 'corn',
};

my @passengers = (\%passenger_1, \%passenger_2);
