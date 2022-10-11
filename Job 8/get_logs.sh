jour=$(date +%d-%m-%Y)
heure=$(date +%H:%M)
fichier=number_connection-$jour-$heure.log
file=$fichier.tar.gz
sudo grep Accepted /var/log/auth.log >> ./$fichier && tar -czvf ./$fichier.tar.gz ./Backup

mv "$file" "/home/deb/Bureau/Shell.exe/Job 8/Backup"
