#Name: Tee Hock Nian 
#Student Number: 10533790

#!/bin/bash

pre="<tr><td>" 
mid="<\/td><td>"
post="<\/td><\/tr>"



grep "<td>" attacks.html | sed -e "s/^$pre//g; s/$mid/ /g; s/$post$//g" | awk 'BEGIN {printf "Attacks\t\t";  printf "Instances(Q3)\n";} {printf "%s\t\t",$1; printf "%d\n",$2+$3+$4} '
# Step 1: grep all the contents containing <td> inside the attacks.html
# Step 2: substitute the contents inside the variables $pre and $post with nothing and substitute the content inside variable $mid with space.
# Step 3: print header at the first line and print every attacks and its sum of the 3 values.


exit 0