
#!/bin/bash
# This script will copy analytics file to 3 remote servers
cd saada
mv analytics /home/ubuntu
cd ~
cat -n analytics
password="1234"
user="nelson"
ips=( 172.31.9.179 172.31.51.136 172.31.6.229 )

for i in ${ips[@]}; do
sshpass -p "$password" scp analytics $user@$i:/home/ubuntu
done
echo $?
rm -rf analytics
cd script
rm -rf saada

