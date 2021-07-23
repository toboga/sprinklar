#!/bin/bash


echo '___________________________' >> relais.log
date '+%Y-%m-%d %H:%M Sicherheitsabschaltung alle aus' >> relais.log
for ch in {1..8}
do 
      ./switch.sh $ch OFF
done
./switch.sh 8 ON
date '+%Y-%m-%d %H:%M schalte Relais 8 an' >> relais.log

#CH 1
date '+%Y-%m-%d %H:%M schalte Relais 1 an' >> relais.log
./switch.sh 1 ON
sleep $1
./switch.sh 1 OFF
date '+%Y-%m-%d %H:%M schalte Relais 1 aus' >> relais.log

#CH 2
date '+%Y-%m-%d %H:%M schalte Relais 2 an' >> relais.log
./switch.sh 2 ON
sleep $2
./switch.sh 2 OFF
date '+%Y-%m-%d %H:%M schalte Relais 2 aus' >> relais.log

#CH 3
date '+%Y-%m-%d %H:%M schalte Relais 3 an' >> relais.log
./switch.sh 3 ON
sleep $3
./switch.sh 2 OFF
date '+%Y-%m-%d %H:%M schalte Relais 3 aus' >> relais.log

./switch.sh 8 OFF
date '+%Y-%m-%d %H:%M schalte Relais 8 aus' >> relais.log

for ch in {1..8}
do 
   ./switch.sh $ch OFF
done
date '+%Y-%m-%d %H:%M Sicherheitsabschaltung alle aus' >> relais.log
