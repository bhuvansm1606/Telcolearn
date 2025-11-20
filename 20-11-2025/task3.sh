
read -p "Enter a name: " name
read -p "Enter an age: " age

if [ -z "$name" ]; then
    echo "username cannot be empty"

elif [[ "$name" =~ ^[A-Za-z]+$ ]]; then #check to contain alphabets ^means start $to end
    echo "user can be permitted"

elif [[ "$age" =~ ^[0-9]+$ ]] && [ "$age" -ge 1 ] && [ "$age" -le 100 ]; then # check to contain the range from 0-9 where age should be greater than 1 and not more than 100
    echo "user age is permitted"

else
    echo "final"
fi

