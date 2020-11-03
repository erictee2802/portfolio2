#Name: Tee Hock Nian 
#Student Number: 10533790

#!/bin/bash

getprop()
{
word_count=$(cat $1 | wc -w)                                        # 'cat' all the content inside the file and count the total words

file_size=$(du -b $1 | awk '{size=$1/1024; printf "%.2fKB",size }') # get file size in bytes using 'du' command and convert it to kilobytes using 'awk' command

# retrive last modified date with 'stat command in human-readable form, then change the format yyyy-mm-dd to dd-mm-yyyy with the help of 'sed' command and also remove the last 16 characters 
last_modified_date=$(stat -c %y $1 | sed -r 's/([[:digit:]]{4})-([[:digit:]]{2})-([[:digit:]]{2})/\3\-\2\-\1/g' | sed -r 's/.{16}$//g') 
 

echo "The file $1 contains $word_count words and is $file_size in size and was last modified $last_modified_date" #output the results

}

read -p "Enter a file name:" filename # request an input from user

getprop $filename                     # call the function with the variable input by user

exit 0 