jour=$(date +%d-%m-%Y-%H:%M)

fichier=number_connection-$jour.log

sudo grep -w "opened for user deb" -c /var/log/auth.log >> ./$fichier
tar -cvf ./$fichier.tar.gz $fichier

mv $fichier.tar.gz ./Backup

rm $fichier
