#!/usr/bin/perl
use strict;
use warnings;
require "list2.pl";

my @things = list("~Documents", "files");
print "----files---\n";
for my $i (@things){
  print("$i\n");
}
@things = list("~Documents", "directories");
print "----directories---\n";
for my $i (@things){
  print("$i\n");
}
@things = list("~Documents", "files_absolute");
print "----AbsoluteFiles---\n";
for my $i (@things){
  print("$i\n");
}

@things = list("~Documents", "files_relative");
print "----Relative Files---\n";
for my $i (@things){
  print("$i\n");
}


@things = list("~Documents", "directories_absolute");
print "----Absolute Directories---\n";
for my $i (@things){
  print("$i\n");
}

@things = list("~Documents", "directories_relative");
print "----relative Directories---\n";
for my $i (@things){
  print("$i\n");
}
