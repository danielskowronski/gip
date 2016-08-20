#!/usr/bin/perl
use Regexp::Common qw /net/;

my @addrs;
while (<>) {
  push @addrs, $_ =~ /$RE{net}{IPv4}/g;
  push @addrs, $_ =~ /$RE{net}{IPv6}/g;
}

print join " " => @addrs, "\n";
