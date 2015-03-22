FROM busybox

EXPOSE 80

CMD while true ; do echo -e "HTTP/1.1 200 OK\n\n$(hostname) $(date)" | nc -l -p 80 ; done 
