#!/usr/bin/perl
#
#

use Data::Dumper;


my @skipper = qw(blue_shirt hat jacket preserver sunscreen);
my $ref_to_skipper = \@skipper;
my $second_ref_to_skipper = $ref_to_skipper;
my $third_ref_to_skipper = \@skipper;

if ($ref_to_skipper == $second_ref_to_skipper && $second_ref_to_skipper == $third_ref_to_skipper) {
        print "These are identical references\n";
}

check_required_items("The Skipper", \@skipper);

my @professor = qw(sunscreen water_bottle slide_rule batteries radio);
check_required_items("The Professor", \@professor);

my @gilligan = qw(red_shirt hat lucky_socks water_bottle);
check_required_items("Gilligan", \@gilligan);

# this creates an array with element 0 containing the string 'Skipper'
# and element 1 containing a reference to array @skipper.
# The => notation is seen in hash, but apparently you can use this
# in list context too!

my @skipper_with_name   = ('Skipper' => \@skipper);
my @professor_with_name = ('The Professor' => \@professor);
my @gilligan_with_name  = ('Gilligan' => \@gilligan);

my @all_with_names = (
        \@skipper_with_name,
        \@professor_with_name,
        \@gilligan_with_name);

print @{$all_with_names[2]});

sub check_required_items {
        my $who = shift;
        my $items = shift;
        my %whois_items = map { $_, 1 } @{items};

        my @required = qw(preserver sunscreen water_bottle jacket);

        for my $item (@required) {
                unless ($whois_items{$item}) {
                        print "$who is missing $item\n";
                }
        }

}
