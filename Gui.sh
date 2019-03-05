#Appel ficher source
source search.sh
source week.sh
source before_week.sh
source per.sh
source save.sh
source searchtmp.sh
source help.sh

while true; do
choice="$(zenity --width=600 --height=250 --list --column="""" --title="project16" \
"1-search" \
"2-week" \
"3-beforeweek" \
"4-searchtmp" \
"5-per" \
"6-save" \
"7-help" \ )"
case "${choice}" in
"1-search" )
inputStr=$(zenity --entry \
--title="Search" \
--text="Enter extension" \
--entry-text "txt ,png , jpg")
Function=$(find  -name "*.$inputStr")
zenity --info --text="$Function" --title="search" \
;;
"2-week" )
Function=$(week)
zenity --info --text="$Function" --title="week" \
;;
"3-beforeweek" )
Function=$(before_week)
zenity --info --text="$Function" --title="before_week" \
;;
"4-searchtmp" )
Function=$(searchtmp)
zenity --info --text="$Function" --title="searchtmp" \
;;
"5-per" )
Function=$(per)
zenity --info --text="$Function" --title="per" \
;;
"6-save" )
Function=$(save)
zenity --info --text="save with succ" --title="save" \
;;
"7-help" )
Function=$(help)
zenity --info --text="$Function" --title="Help" \
;;
*)
break
;;
esac
done
