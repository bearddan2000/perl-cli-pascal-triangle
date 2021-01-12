#!/usr/bin/env perl

sub pascalTriangle
{
  my $n = shift;
  if ($n > 10) {
    printf "[ERROR] %d too big\n", $n;
    exit 1;
  }
  print "[OUTPUT] \n";

  for (my $i=0; $i<$n; $i++) {
    my $c = 1;
     for (my $j=0; $j<$i+1; $j++) {
        printf("%d ", $c);
        $c *= (($i-$j)/($j+1));
     }
     print "\n";
  }
  print "\n";
}

# Driver Program to test above function
sub main
{
    $input = 10;
    printf("[INPUT] %d\n", $input);
    &pascalTriangle($input);
}
&main;
