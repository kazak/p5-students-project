#!/usr/bin/perl

use warnings;

@arr2=("!","@","#","%","^","&","*","(",")","_","-","+",".","<","/","?","[","]","{","}","|","\n","`","",);
# $slovo=<STDIN>;
# chomp($slovo);
# print "Enter string\n";
# $str=<STDIN>;


open( FH, "<", "$test_file_path") or die "Can not open test file: $!";

$slovo=<FH>;
$str=<FH>;

@mas=qw();
  $str=~s/\s*//g;
  $str=~s/\>*//g;
  $osh=$str;
  $osh=~s/\w*//g;
  if($slovo eq ""){
 
print STDOUT "Error\n" ;
print STDERR "do not enter\n";
exit;
}
 if($str eq ""){
 
print STDOUT "Error\n" ;
print STDERR "do not enter\n";
exit;
}
 
 @q=split(//,$osh);
for(my $j=0;$j<scalar(@arr2);$j++){
if($q[$i] eq $arr2[$j]){
print STDOUT "Error\n"; 
print STDERR "undef symbol\n";
 exit;
}
}
}



for(my $i=0;$i<scalar(@str1);$i++){
@massluch=split(/=/,$str1[$i]);
push(@mas,@massluch);
 # for(my $i=0;$i<scalar(@mas);$i++){
 # print "$mas[$i]\n";}
%hash=();
$hash{$mas[$i]}=$mas[$i+1];
$i++;
$pom=$slovo;
print "$slovo";
push(@proverka,$slovo);
for(my $v=0;$v<scalar(@mas);$v++){
for(my $j=0;$j<scalar(@mas);$j++){
  
if($pom eq $mas[$j]){
print "-$hash{$mas[$j]}";

$pom=$hash{$mas[$j]};

for(my $q=0;$q<scalar(@proverka);$q++){
  
  print "\nlooped\n";
  exit;
}
push(@proverka,$hash{$mas[$j]});
}
$j++;
$v++;
}
 print "\n";
 
close ( FH );