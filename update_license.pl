# #!/bin/perl

if(($#ARGV + 1) != 3){
  print "Usage: update_license.pl <license file> <previous year> <new year>\n";
  exit;
}
my $filename = $ARGV[0];
my $previous_year = $ARGV[1];
my $newyear = $ARGV[2];
my $f_prog_year_and_author = 635;
my $s_prog_year_and_author = 655;

open(my $in, "<",$filename ) or die "File ".$filename." doesn't exist";
open(my $out,">",$filename.".temp") or die "Cannot create new file: ".$filename.".temp";

my $counter = 1;

while(my $line = <$in> ){
  if ($counter eq $f_prog_year_and_author or $counter eq $s_prog_year_and_author){
    # my $line = <$in>;
    $line =~ s/$previous_year/$newyear/;
    print $line;
    print $out $line;
  }
  else {
    print $out $line;
  }
  $counter++;

}


close($in);
close($out);

rename("LICENSE.temp","LICENSE") or die "Failed to rename";