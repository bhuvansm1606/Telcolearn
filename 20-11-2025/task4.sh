
echo "Do you want system stats?"
echo "1. CPU"
echo "2. Memory"
echo "3. Disk"
echo "4. Network"
echo "Enter your choice:"
read choice

case $choice in

1)  echo " CPU INFO "
    lscpu
    ;;
2)  echo " MEMORY INFO "
    free -h
    ;;
3) echo " DISK INFO "
    df -h
    ;;
4) echo " NETWORK INFO "
    ip a
    ;;
*) echo "Invalid option"
    ;;
esac

