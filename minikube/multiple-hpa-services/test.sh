echo -e "\nTesting animals.com/cats:\n\n"
curl --resolve "www.animals.com:80:127.0.0.1" -i http://www.animals.com/cats
echo -e "\nTesting animals.com/dogs:\n\n"
curl --resolve "www.animals.com:80:127.0.0.1" -i http://www.animals.com/dogs