#!/usr/bin/perl
#
# Exercise 1, Chapter 2.
#
# Read the list of files in the current directory and convert the names
# to their full path specification. Don’t use the shell or an external program to get
# the current directory. The File::Spec and Cwd modules, both of which come with
# Perl, should help. Print each path with four spaces before it and a newline after it.

use File::Spec;
use Cwd 'abs_path';

$DIR = "/home/foung/PROJECTS";
opendir(DIRFH, $DIR);
@paths = File::Spec->no_upwards(readdir DIRFH);
foreach (@paths) {
	print "     " . abs_path($_) . " \n";
}




