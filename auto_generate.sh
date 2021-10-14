# Will call generate with the correct values for this week
echo "Generating time sheet for calendar week: " `date -v -Thur +%V`
./generate.sh `date +%V` `date -v -Wed +%d.%m.%Y` `date -v -Thur +%d.%m.%Y`
