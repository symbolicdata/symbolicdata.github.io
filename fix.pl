undef $/;
open(FH,shift) or die;
$_=<FH>;
# fix links
s/\[(http\S+)\s([^\]]+)\]/\[$2\]\($1\)/g;
print;
