#!/bin/bash
curl https://www.playstation.com/en-us/support/hardware/ps3/system-software/ > source.txt
sed -n "/data-uuid/,/div class/p" source.txt > newsource.txt && sed -i '2,$d' newsource.txt && grep -oP "http://\K[^']+" newsource.txt > newsource1.txt && grep -oP '^.*"' newsource1.txt > newsource2.txt 
PUPURL=$(sed -r 's/.{204}$//' newsource2.txt)
wget "$PUPURL" $(pwd)
