
function before_week() {
  find -mtime +7 -exec ls -rtdl {} \;
}
