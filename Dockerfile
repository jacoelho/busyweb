FROM busybox

EXPOSE 80

CMD while true; do ( echo "HTTP/1.0 200 Ok"; echo; echo `hostname` `date` ) | nc -l -p 80; done
