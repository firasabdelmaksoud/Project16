function per() {
  ftmp=$(find  -name "*~"| wc -l)
  fl=$(ls | wc -l)
  echo "pourcentage" $((ftmp*100/fl)) "%"

}
