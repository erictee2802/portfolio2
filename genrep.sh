#Name: Tee Hock Nian 
#Student Number: 10533790

#!/bin/bash


grep -i 'DDOS\|MALWARE\|XSS\|SQL\|MitM' attacks.html | sed 's/<[^>]\+>/ /g' | awk 'BEGIN {printf "Attacks\t\t";  printf "Instances(Q3)\n";} {printf "%s\t\t",$1; printf "%d\n",$2+$3+$4} '
# Step 1: grep all the attacks inside the attacks.html
# Step 2: substitute all the unwanted stuffs to space.
# Step 3: print header at the first line and print every attacks and its sum of the 3 values.


exit 0