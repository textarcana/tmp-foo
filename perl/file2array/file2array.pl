#!/usr/bin/env perl

use strict;
use warnings;
use Carp;
use v5.10;

my @lines;

sub array_from_file{
  open my $handle, '<', shift;
  chomp(my @lines = <$handle>);
  close $handle;
  return @lines;
}

@lines = array_from_file($ARGV[0]);

say "@lines";
