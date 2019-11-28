#!/bin/bash
echo "FROM wernight/dante" > Dockerfile
echo "RUN rm /etc/sockd.conf" >> Dockerfile
echo "COPY sockd.conf /etc/sockd.conf" >> Dockerfile
touch users.txt
while read line; do
    u=$(echo $line | cut -d" " -f1)
    p=$(echo $line | cut -d" " -f2)
    echo "RUN printf '$p\n$p\n' | adduser $u" >> Dockerfile
done < users.txt
