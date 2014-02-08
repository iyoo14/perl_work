#!/usr/bin/env perl

use strict;
use warnings;

my %PRIME = map { $_ => 1}(1..100);

for (2..100) {
    my $num = $_;
    my $sqrt = int(sqrt $num);
    for (my $i=2; $i <= $sqrt; $i++) {
        if ($num % $i == 0) {
            $PRIME{$num} = 0;
        }
    }
}
for my $n (sort {$a <=> $b} keys(%PRIME)) {
    print "$n\n" if($PRIME{$n});
}
