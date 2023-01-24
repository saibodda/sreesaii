Shell scripting part:
Vim dckr.sh
log_file=/opt/docker.txt
read -p "how many containers" h
i=1
for(( i=1;i<=$h;i++ ))
do
        read -p "enter image" d
        read -p "enter port number" p
        read -p "enter container name" c
done
docker pull $d
read -p "enter the container to save log" log
if [ $log == $c ]
then
docker start $c
else
        echo "enter valid name"
fi
[root@ip-172-31-86-114 ~]# vim dckr.sh
[root@ip-172-31-86-114 ~]# sh dckr.sh
how many containers 2
enter image nginx
enter port number 8080:80
enter container name sai
enter image tomee 
enter port number 7070:80
enter container name ccc
Using default tag: latest
latest: Pulling from library/tomee
846c0b181fff: Pull complete 
08b0873b98ac: Pull complete 
d26a502e2cfa: Pull complete 
459bdc265a8a: Pull complete 
c5fa6822f5f6: Pull complete 
a1b5ed548c03: Pull complete 
5f83fa7cfd63: Pull complete 
140517ad033e: Pull complete 
Digest: sha256:37c2d16bd0f650d05ec98fc0628bd7fc0ce8c38f2023b8feccac2b5b50f1cd6a
Status: Downloaded newer image for tomee:latest
docker.io/library/tomee:latest
enter the container to save log ccc
ccc
