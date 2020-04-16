clear
echo "--------------------"
echo "|      Ты на?      |"
echo "|------------------|"
echo "| 1. Termux        |"
echo "| 2. Unix          |"
echo "|                  |"
echo "| choose 1 or 2:   |"
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
	
else
	if [ $numb = "2" ]
	then

		if [ "$(whoami)" != 'root' ]; then
			echo "У вас нет прав. Запустите install.sh с root правами (sudo sh ~/spamer/install.sh)"
			exit
		else
			apt install python3 python3-pip dos2unix
			pip3 install requests
			pip3 install colorama
			cp ~/spamer/spammer.py /usr/bin/spamer
			dos2unix /usr/bin/spamer
			chmod 777 /usr/bin/spamer
			spamer
		fi
	else
		echo "Некорректный ввод"
	fi
fi
fi
