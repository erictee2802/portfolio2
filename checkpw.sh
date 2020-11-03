#Name: Tee Hock Nian 
#Student Number: 10533790

#!/bin/bash


awk ' 

    NR>1 { #Remove header  

    
     
    if  ( length($2) >= 8 && $2 ~ /[0-9]/ && $2 ~ /[A-Z]/ ) #First Condition: Length function is used to chcek if characters greater or equal to 8.
                                                            #Second Condition: Check to see if passwords contain digit number 
        {                                                   #Third Condition: Check to see if passwords contain uppercase letter.

            
              print ""$2" - meets password strength requirements\n" # If 3 conditions were satisfied, print this result.
            

        }


    else 
        {   print ""$2" - does NOT meet password strength requirements\n"   #Else, print this result.

         } 
}
' usrpwords.txt  # input the file
exit 0