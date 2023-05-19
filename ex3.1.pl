#!/usr/bin/perl
#
# Exercise 3.1
#
# Write a program that takes a list of filenames on the command line
# and uses grep to select the ones whose size is less than 1,000 bytes. Use map to
# transform the strings in this list, putting four space characters in front of each and
# a newline character after. Print the resulting list.

@filenames = <@ARGV>;

@less_than_1K = grep { ((stat $_)[7]) < 1000 } @filenames; # Investigate further why we need 2 parens here. 

foreach (@less_than_1K) {
	print "    " . $_ . "\n";
}

