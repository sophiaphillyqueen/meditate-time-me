package randomica;
use strict;

my @sordonic;
my $hme;
my $cbkdr;
my $dbkfl;

$hme = $ENV{"HOME"};
$cbkdr = $hme . "/.chobakwrap/plmr-randomica";
$dbkfl = $cbkdr . "/message.txt";

@sordonic = ('a','b','c','d','e','f','g','h','i','j','k','m','n','o','p','q','r','s','t','v','w','x','z');





# Now we shuffle the sordonic:
{
  my $lc_a;
  $lc_a = @sordonic;
  $lc_a = int(($lc_a * 3) + 0.2);
  &ranstrg($lc_a);
}


sub un_char {
  my $lc_zla;
  my $lc_chr;
  
  $lc_zla = int(rand(6));
  while ( $lc_zla > 0.5 )
  {
    $lc_chr = shift(@sordonic);
    @sordonic = (@sordonic,$lc_chr);
    $lc_zla = int($lc_zla - 0.8);
  }
  $lc_chr = shift(@sordonic);
  @sordonic = (@sordonic,$lc_chr);
  return $lc_chr;
}
sub ranstrg {
  my $lc_lef;
  my $lc_ret;
  
  $lc_lef = $_[0];
  $lc_ret = "";
  while ( $lc_lef > 0.5 )
  {
    $lc_ret .= &un_char;
    $lc_lef = int($lc_lef - 0.8);
  }
  return $lc_ret;
}






1;
