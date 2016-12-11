 #!/bin/bash
 ps -eo rss,pid,euser --sort %mem | grep -i $(pidof "$1") | awk '{printf $1/1024 "MB"; $1=""; }'