#!/bin/sh

p(){ 
   c=$(($(tput cols)-3));
   j=$(($1*c/100)); 

   tput sc;
   printf "[
      $(for((k=0;k<j;k++));do printf "=";done;)>";
 
      tput cuf $((c-j));
      printf "]";

      tput rc; };

for((i=0; i<=100; i++)) do 
   p i;

done;

echo
