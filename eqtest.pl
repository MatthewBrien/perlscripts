#!/usr/local/bin/perl
use strict;
use warnings;

sub say { print @_, "\n" }
sub test;

if('a' eq 'b'){
  say "what?";
}
else{
  say "phew";
}

my $temp = ".";
if(!$temp eq "."){
  say "equal";
}

sub test{
  say @_;
}

test "test input";
test "test input " . " and more!";
