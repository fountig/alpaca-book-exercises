#!/usr/bin/perl
#
# Exercise 3.2
# 
# Write a program that asks the user to enter a pattern (regular expres-
# sion). Read this as data from standard input; don’t get it from the command line
# arguments. Report a list of files in some hardcoded directory (such as "/etc" or
# 'C:\\Windows' ) whose names match the pattern. Repeat this until the user enters
# an empty string instead of a pattern. The user should not type the slashes tradi-
# tionally used to delimit pattern matches in Perl; the input pattern is delimited by
# the trailing newline. Ensure that a faulty pattern, such as one with unbalanced
# parentheses,  doesn’t crash the program.

$DIR = "/etc";
opendir ETCFH, $DIR;
@files = readdir ETCFH;

$empty_input = 0;
while ($empty_input != 1) {	
	my $line = <STDIN>;
	chomp($line);
	
	if (length($line) == 0) {$empty_input = 1;}
	
	else {
		eval { 
			my @matched = grep /$line/, @files;
	        	print "@matched\n";	
		};
	} warn $@ if $@;
} 

