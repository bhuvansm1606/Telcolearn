echo "create user.txt"
echo "create user"
echo "create list"
echo "Invalid"
read choice

case $choice in
1) echo "touch user.txt"
touch user.txt
;;
2) echo "mkdir user"
mkdir user
;;
3) echo "ls -lat"
ls -lat
;;
4) echo "Invalid"
 ;;

esac
