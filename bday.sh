read -p "Type your birthday (yyyy.mm.dd)" bday
cy=2024
if [[ "$bday" =~ ^[0-9]{4}.[0-9]{2}.[0-9]{2}$ ]];
 
then

year=$( echo "$bday" | cut -d '.' -f1 )
month=$( echo "$bday" | cut -d '.' -f2 )
day=$( echo "$bday" | cut -d '.' -f3 )
age=$(( cy - year ))

else
echo "DANGER! DANGER! The format of the date is not correct!"
fi


if ((age > 90))
then
echo "You are already dead. If you are alive give a correct date."
fi
if((age > 0 && age < 90))
then
echo "You are $age years old!"
fi
if ((age < 0))
then
echo "You didn't even born yet. If you are alive give a correct date."
fi
