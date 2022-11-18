#!/bin/bash
clear

menu(){
	echo "----------------------------"
	echo 
	echo "	MENU"
	echo
	echo "----------------------------"
	echo
	echo "1. Launch htop to see processor acitvities"
	echo "2. Users currently logged in"
	echo "3. Show CPU info"
	echo "4. Show filesystem"
	echo "5. Show graphics processor"
	echo "6. Open Network manager"
	echo "7. Show pci devices in tree format"
	echo "8. Show space available on hard disk"
	echo "9. Flex arch btw :)"
	echo "10. Exit"
	echo "11. Auto-accepts such messages by passing yes"
	echo "12. Move or rename files in linux"
	echo "13. Get's active username"
	echo "14. Display all active processes"
	echo "15. Display disk filesystem information"
	echo "16. Direct download files from the internet"
	echo "17. Find what the command is used for"
	echo "18. View active procceses live in the system"
	echo "19. Causes a steam locomotive to zip across your terminal "
	echo "20. Causes a fire place animation to play."
	echo "21. You get famous quotes"
	echo "----------------------------"
	echo
	echo "Please enter option [1 - 10]:"  
}

option=y

while [ "$option" != "10" ]
do
	menu

	read option

	case $option in
		1) htop;; # the user has to press [q] to exit and get back to main menu 
		2) who;;
		3) cat /proc/cpuinfo | grep -Em 4 "model name|cpu MHz|cpu cores|vendor_id";;
		4) lsblk;;
		5) lspci -v | grep -i vga;;
		6) nmtui;;
		7) lspci -vt;;
		8) df -i;;
		9) neofetch | lolcat;;
		10) break;; # exit menu
		11) yes | foo;; #auto accepts commands by passing yes to the command
		12) mv <filename> <new_filename>;;
		13) whoami;;
		14) ps;;
		15) df;;
		16) wget <URL>;;
		17) whatis <command>;;
		18) top;;
		19) sl;;
		20) aafire;;
		21) fortune;;
		*) echo "Wrong option";; # * means anything else
esac

read -p "Press [enter] key to continue..." 
clear

done

clear

