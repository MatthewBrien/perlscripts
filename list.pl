#!/usr/local/bin/perl
use strict;
use warnings;

sub say { print @_, "\n" }
sub list;

sub list{
  say "Called again!";
  my $current_directory = $_[0];
  say "opening $current_directory";
  opendir my $dir, $current_directory or die "Cannot open directory: $!";
    my @files = readdir $dir;
  closedir $dir;
  say @files;
  for my $file (@files)
  {
    if( !($file eq '.') && !($file eq '..') ){
      if(-d $file){
          list("$current_directory$file/");
      }
      if(-f $file){
          say $current_directory . $file;
        }
      }
    }
  }


my $top_dir = "";
#Pass a directory to traverse, if no parameter, default is the current directory
if (@ARGV){
  $top_dir = $ARGV[0];
}
else {
  $top_dir = "./";
}

list($top_dir);
