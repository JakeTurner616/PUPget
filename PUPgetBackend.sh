#!/bin/bash
#The only difference with this branch is the DIR env variable is to be set rather than assumed:
DIR="/var/www/html/dir_goes_here"
curl https://www.playstation.com/en-us/support/hardware/ps3/system-software/ > source.txt
sed -n "/data-uuid/,/div class/p" source.txt > newsource.txt && sed -i '2,$d' newsource.txt && grep -oP "http://\K[^']+" newsource.txt > newsource1.txt && grep -oP '^.*"' newsource1.txt > newsource2.txt
PUPURL=$(sed -r 's/.{204}$//' newsource2.txt)
wget "$PUPURL" -P "$DIR"
rm -r source.txt
rm -r newsource.txt
rm -r newsource1.txt
rm -r newsource2.txt
rm -r "$DIR" && mv "$DIR"/PS3UPDAT.PUP.1 "$DIR"/PS3UPDAT.PUP
