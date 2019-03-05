function week() {
  find -mtime -7 -exec ls -rtdl {} \;
}
