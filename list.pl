#!/usr/local/bin/perl
use strict;
use warnings;

#print and append new line
sub say { print @_, "\n" }
sub list;

#print all files in directory, call list on all subdirectories
sub list{
  my $current_directory = $_[0];
  opendir my $dir, $current_directory or die "Cannot open directory: $!";
    my @files = readdir $dir;
closedir $dir;
  for my $file (@files)
  {
      if(-d "$current_directory$file"){

        if( !($file eq '.') && !($file eq '..') ){
            list("$current_directory$file/");
          }
        }
      else{
          say "$current_directory$file";
        }
    }

} #end list


#setup
#Pass a directory to traverse, default is set to he current directory ./
#If directory  doesn't end with /  append one
my $top_dir;
if (@ARGV){
  $top_dir = $ARGV[0];
    #add slash to directory
  if(!($top_dir =~ /\/$/ )){
    $top_dir .= '/';
  }
}
else {
  $top_dir = "./";
  }

#list files in folder
list($top_dir);
