filename="Userlist.csv"

echo -e "étape 1 fait\n"

while IFS="," read -r rec_column1 rec_column2 rec_column3 rec_column4 rec_column5 rec_column6

do

echo -e "étape 2 fait\n"

if [ "$rec_column5" == "Admin" ]

then

echo -e "utilisateur est Admin\n"

G="sudo"

else

echo "$rec_column5"

echo -e "Utilisateur est User\n"

G="Plateformeurs"

fi

sudo useradd $rec_column2 --uid $rec_column1 --create-home --groups $G --shell /bin/bash && sudo echo $rec_column5 | passwd $rec_column2

done < <(tail -n +2 $filename)
