function save() {
  #statements
  ftmp=$(find  -name "*~"| wc -l)
  fl=$(ls | wc -l)
  echo -e "pourcentage \t \t" $((ftmp*100/fl))"%" > pourcentages~.txt
}
