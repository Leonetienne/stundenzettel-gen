# Will call generate with the correct values for this week
./generate.sh `date +%V` `date -v -Wed +%d.%m.%Y` `date -v -Thur +%d.%m.%Y`
