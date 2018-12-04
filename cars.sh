#! /bin/bash
# cars.sh
#Shaun Wiechmann
while true
do
echo -n "Do you want to 1 Enter a car, 2 Sort the list, or 3 Quit: "; read answer
case "$answer" in
"1")
	echo "Enter a year: "
	read year
	echo "Enter a make: "
	read make
	echo "Enter a model: "
	read model
	echo $year:$make:$model	>> My_old_cars
	;;
"2") sort My_old_cars | tr ":" " ";;
"3") echo "Goodbye" 
	break;;
esac
done
