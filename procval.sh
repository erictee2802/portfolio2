#Name: Tee Hock Nian 
#Student Number: 10533790

#!/bin/bash



file=values.txt          #Save the values.txt inside a variable named file.

declare -a VALUES        #Declare an array with the name VALUES.

VALUES=(`cat "$file"`)   # 'cat' all the contents into the VALUES array.


 for (( i = 0 ; i < ${#VALUES[*]}; i++));do                                #Define i=0 because index start at 0 and loop until i < length of the array ,variable i will be increased by 1 on each loop.
    
    if [[ ${VALUES[$i]} =~ ^([A-Z]|[a-z])+$ ]];then                        # if the value inside the current index i in the array is starting and ending with A-Z or a-z.
        echo  "${VALUES[$i]}  is comprised of letters only"                # echo the content inside the current index in the array with the strings "is comprised of letters only".
        

    elif [[ ${VALUES[$i]} =~ ^[0-9]+$ ]];then                              #if the value is starting and ending with digit number only.
         echo  "${VALUES[$i]}  is comprised of numbers only"               #echo the content inside the current index in the array with the strings "is comprised of numbers only"

    else
         echo  "${VALUES[$i]} is comprised of numbers and letters"         # Else, echo the content inside the current index in the array with the strings "is comprised of numbers and letters."

    fi

 done

 exit 0
 