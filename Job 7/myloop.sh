counter=1
while [ $counter -le 10 ]
do
echo "Je suis un script qui arrive à faire une boucle $counter"
	((counter++))
done

echo All done
