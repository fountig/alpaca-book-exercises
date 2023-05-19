#!/usr/bin/perl
#
#
use Business::ISBN;

$llama_book = Business::ISBN->new('9781449393090');
print $llama_book->group_code . "\n";
print $llama_book->publisher_code . "\n";


