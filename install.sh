clear
echo "--------------------"
echo "|      Choose      |"
echo "|------------------|"
echo "| 1. Termux        |"
echo "| 2. Unix          |"
echo "|                  |"
echo "| Choose 1 or 2:   |"
echo "--------------------"
read numb
if [ $numb = "1" ]
then
	pkg install python
	pkg install python3
	pkg install python3-pip
	pkg install dos2unix
	pip3 install requests
	pip3 install colorama
	
	spamer
else
	if [ $numb = "2" ]
	then

		if [ "$(whoami)" != 'root' ]; then
			echo "Run install.sh whis root (sudo bash install.sh)"
			exit
		else
			apt install python3 python3-pip dos2unix
			pip3 install requests
			pip3 install colorama
			spamer
		fi
	else
		echo "Error!"
	fi
fi
