#! /bin/bash

# This is a comment

# echo "Hello world" # This is a comment

# variables
# echo Our Shell name is: $BASH
# echo Our Shell Version name is: $BASH_VERSION
# echo Our home Dir is: $HOME
# echo Our Present working dir: $PWD

# name=Mark
# val=10

# echo "The variable name is " $name
# echo "Value: " $val

# echo "What is your names: "
# read name1 name2 name3
# echo "Entered name " $name1, $name2, $name2

#  read inputs into variable 1liner
# read -p 'username': user_var
# echo "Username is: $user_var"

# read -sp 'paddwork': pass_var
# echo "Username is: $pass_var"

#  read an array of inputs
# echo "Enter Names: "
# read -a names
# echo "Names: ${names[0]} ${names[1]}"

#  reads all inputs and store them in reply (all goes into reply as a string)
# echo "Enter Names: "
# read 
# echo "Names: $REPLY"

# passing arguements (the zeroth element is the file)
# echo $0 $1 $2 $3 ' > echo $1 $2 $3 '

#  Arguments as an array # the zeroth elemet is the start of the array
# args=("$@")

# echo  ${args[0]} ${args[1]}  ${args[2]}  ${args[3]}
# echo $args # cant be accessed as collective arguements, it has to be specific 1, 2 ,3, ...

# echo $@ # ehcos all arguments in one spi$

# echo $# # the number is arguements passed to a script

# #  can be stored in a variable
# numVar=$#
# echo $numVar 

# Using IF statements (if then, if then else, if elif else)

# if [ condition ] # start of a statement
# then # then proceed
#    statements # perform some logic
# fi # end of if statement

# count=10

# if [ $count -ne 9 ]
# then # statement will print if count is not equal to 9
#    echo 'condition is true'
# fi

#  this also work the same
# if  (( $count > 9 ))
# then # statement will print if count is not equal to 9
#    echo 'condition is true'
# fi

# comparing strings 

# work=abc
# if [ $work == 'abc' ] # "!==" == , =, -z- string id null or has lenght of zero
# then
#    echo 'condition is true'
# fi

# work=abc
# if [[ $work < 'abcde' ]] # when comapring strings with angle brackets, its you should use double square brackets
# then
#    echo 'condition is true'
# fi # condition is true

# ELSE
# work=abc
# if [[ $work == 'abcde' ]] # when comapring strings with angle brackets, its you should use double square brackets
# then
#    echo 'condition is true'
# else
#    echo 'condition is false'
# fi # condition is false


# ELSEIF
# letter=b

# if [[ $letter == 'b' ]]
# then
#    echo 'The letter is: ' $letter
# elif [[ $letter == 'a' ]]
# then 
#    echo 'The letter is: ' $letter
# else
#    echo 'the letter is neither a or b'
# fi 

# this conditions checks if there is a file with the read name in the current directory which this bach file is executed ( -e )

# echo -e "Enter the name of the file : \c"
# read file_name

#  if [ -e $file_name ]
#  then
#    echo "$file_name found"
# else
#    echo "$file_name not found"
# fi


# this conditions checks if the document is a file in the current working directory  ( -f )

# echo -e "Enter the name of the file : \c"
# read file_name

#  if [ -f $file_name ]
#  then
#    echo "$file_name is a file"
# else
#    echo "$file_name not not a file"
# fi

# this conditions checks if the document is a file in the current working directory  ( -d )
# echo -e "Enter the name of the directory : \c"
# read file_name

#  if [ -d $file_name ]
#  then
#    echo "$file_name is a Dir"
# else
#    echo "$file_name not not a Dir"
# fi

#  NOTE for character special file we can use ( -c )
# block special ( -b ) 
# is a file is empty use ( -s )
# file has reader permission -r 
# file had write permission -w 
# file has execute permission -x

# echo -e "Enter the name of the directory : \c"
# read file_name

#  if [ -s $file_name ]
#  then
#    echo "$file_name not empty"
# else
#    echo "$file_name is empty"
# fi


# >>  append write to file
#  > overwrite on file
#  TASK 
# check if there is a file with a given file name and check if the user have the right permission to write into it, if they do, give them access to write into it, otherwise yell they dont have the right permission 

# echo -e "Enter the name of the directory : \c"
# read file_name

#  if [ -f $file_name ]
#  then
#    if [ -w $file_name ]
#    then
#       echo 'Type some text. To quit press ctrl+d'
#       cat >> $file_name 
#    else
#       echo "The file does not have the right permissions"
#   fi
# else
#    echo "$file_name not exist"
# fi

 
# Logical AND operator
# ( "&&" ) 0r ( "-a" )

# TASK 
# age=30

# AND
# if [ "$age" -gt 18 ] && [ "$age" -lt 30 ] ✔
# if [ "$age" -gt 18 -a "$age" -lt 30 ] ✔
# if [[ "$age" -gt 18 && "$age" -lt 30 ]] # ✔
# then 
#    echo 'valid age'
# else
#    echo 'age not valid'
# fi

# OR
# if [ "$age" -gt 18 ] || [ "$age" -lt 30 ] # ✔
# if [[ "$age" -eq 18 || "$age" -eq 30 ]] # ✔
# then 
#    echo 'valid age'
# else
#    echo 'age not valid'
# fi

# isLoggedIn=1
# message="I love me"
# echo -e "Tell your self you love your self MF!!: \c"
# password=$1

# if [[ $password == $message ]]
# then
#    echo "Welcome my boy 😍"
# else
#    echo -e "Tell your self you love your self MF!!: \c"
#    read password
# fi

# ARRITHMETIC OPERATIONS
# num1=10
# num2=25


# sum=$(($num1 + $num2))
# echo "$sum is sum of $num1 and $num2"
# echo $(($num1 - $num2))
# echo $(($num1 * $num2))
# echo $(($num1 / $num2))
# echo $(($num1 % $num2))

# sum=$(expr $num1 + $num2)
# echo "$sum is sum of $num1 and $num2"
# echo $(expr $num1 - $num2)
# echo $(expr $num1 \* $num2)
# echo $(expr $num1 / $num2)
# echo $(expr $num1 % $num2)

# FLOATING POINT MATH OPERATIONS IN BASH | BC COMMAND
# num1=20.5
# num2=5

# echo "20.5+5" | bc
# echo "20.5-5" | bc
# echo "$num1*$num2" | bc
# echo "scale=2;$num1/$num2" | bc
# echo "$num1%$num2" | bc


# num3=144

# pass in variables  then use the funtuon on it and you can specify what library to use 
# echo "scale=2;sqrt($num3)" | bc -l
# echo "scale=2;2^3" | bc -l  # 8


# CASE EXPRESSIONS

# case expression in 
#    pattern1 )
#       statements ;;
#    pattern2 )
#       statements ;;
#    ...
# esac

# rental vehicle example 
vehicle=$1 # this points to the arguement passed to the script

case $vehicle in 
   "car" )
      echo " Rent of $vehicle is \$100" ;;
   "van" )
      echo " Rent of $vehicle is \$80" ;;
   "bicycle" )
      echo " Rent of $vehicle is \$5" ;;
   "truck" )
      echo " Rent of $vehicle is \$150" ;;
   * )
      echo " Unknown vehicle"
esac