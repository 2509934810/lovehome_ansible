#!/bin/bash
NET=192.168.1
USER=root
PASSWORD=lei123
# ssh-keygen -t rsa -P '' -f ~/.ssh/id_rsa &> /dev/null
for i in {19..21} ; do
{
expect <<EOF
spawn ssh-copy-id -i ${USER}@${NET}.${i}
expect {
  "yes/no" { send "yes\n";exp_continue }
  "password" { send "${PASSWORD}\n" }
}
expect eof
EOF
}&
done
wait
