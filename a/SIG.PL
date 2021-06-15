#map{$a=ord($_)^64;for(0..7){print((($a>>=1)%2)?"[]":"  ")}
#}(split//,"^~~~^bBHBbbBHBb^NHN^BBHBJBBHBRB~H~b")

#main(i){char*_="NGg\\FabBUHFADEjFA\\^EFATDjLFaRBUHFNQarAF";while
#(i=*_++)for(;i>1;printf(i-70?i&1?"[]":" ":(i=0,"\n")),i/=2);} /*Craig*/


#map
#   {
#   for ($i=ord($_);
#        $i>1;
#        printf($i!=70?$i&1?"[]":" ":($i=0,"\n")) ,
#        $i/=2
#        ){}
#   }(split//,"NGg\\FabBUHFADEjFA\\^EFATDjLFaRBUHFNQarAF")

#map
#   {
#   for ($i=ord($_); $i>=2; $i/=2)
#      {
#      printf($i!=70?$i&1?"[]":" ":("\n",$i=0))
#      }
#   }(split//,"NGg\\FabBUHFADEjFA\\^EFATDjLFaRBUHFNQarAF")



#map{for ($i=ord($_); $i>=2; $i/=2){printf($i!=70?$i&1?"[]":" ":
#("\n",$i=0))}}(split//,"NGg\\FabBUHFADEjFA\\^EFATDjLFaRBUHFNQarAF")


#map{for($i=ord($_);$i>=2;$i/=2){printf($i-70?$i&1?"[]":" ":
#("\n",$i=0))}}(split//,"NGg\\FabBUHFADEjFA\\^EFATDjLFaRBUHFNQarAF")

#map{for($i=ord($_);$i>=2;$i/=2){printf($i-70?$i&1?"[]":" ":
#("\n",$i=0))}}(split//,"NGg\\FabBUHFADEjFA\\^EFATDjLFaRBUHFNQarAF")

map{for($i=ord($_);$i>=2;$i/=2){printf($i-97?$i&1?"[]":" ":
("\n",$i=0))}}(split//,"g{nCaQADAQaQADAQagAqxaABHBJaABHBRaANbKBa")


