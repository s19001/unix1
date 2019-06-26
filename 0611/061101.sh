expr \( `date --date "20190901" +%s` - `date --date "today" +%s` \) / 60 / 60 / 24
#sec=$(expr `date --date "20190901" +%s` - `date --date "today" +%s`)
#echo $((${sec} / (60 * 60 * 24)))
