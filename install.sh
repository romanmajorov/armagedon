#!/bin/bash
clear
echo "Your OS:"
echo "1) Windows"
echo "2) Linux\Termux"
read numb
if [ $numb = "1" ]
then
	pkg install python
	pkg install dos2unix
	pip install requests colorama proxyscrape
	cp ~/armagedon/bomber.py $PREFIX/bin/armagedon
	dos2unix $PREFIX/bin/armagedon
	chmod -R 777 ~/armagedon
	chmod 777 $PREFIX/bin/armagedon
	armagedon
else
	if [ $numb = "2" ]
	then
		if [ "$(whoami)" != 'root' ];
		then
			echo "У вас нет прав. Запустите install.sh с root правами (sudo sh ~/armagedon/install.sh)"
			exit
		else
			apt install python3 python3-pip dos2unix
			pip3 install requests colorama proxyscrape
			cp ~/armagedon/bomber.py $PREFIX/bin/armagedon
			dos2unix $RPEFIX/bin/armagedon
			chmod 777 $RPEFIX/bin/armagedon
			chmod -R 777 ~/armagedon
			armagedon
		fi
	else
		if [ $numb = "3" ] 
		then
			apk add python
			apk add python3
			apk add dos2unix
			pip3 install requests
			pip3 install colorama
			pip3 install proxyscrape
			cp ~/armagedon/bomber.py /usr/bin/armagedon
			dos2unix /usr/bin/armagedon
			chmod 777 /usr/bin/armagedon
			armagedon
		else
			echo "Некорректный ввод"
		fi
	fi
fi
