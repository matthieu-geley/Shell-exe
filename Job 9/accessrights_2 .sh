Ligne=2

nb=wc Userlist.csv > a && awk '{print $1}' FS=" " a && rm a

nb=expr $nb + 1

while [ $Ligne -lt $nb ]

do
	sed -n "$Ligne p" Userlist.csv > buff

	id=awk '{print $1}' FS="," buff

	prenom=awk '{print $2}' FS="," buff

	nom=awk '{print $3}' FS="," buff

	passwrd=awk '{print $4}' FS="," buff

	droits=awk '{print $5}' FS="," buff

	if [["$droits" == "Admin" ]]
	then G="sudo"
	else G="Platformers"

sudo adduser $prenom --uid $id --create-home --groups
