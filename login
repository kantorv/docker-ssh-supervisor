DOCKER="sudo docker"
SERVER_IP=$($DOCKER inspect sshsupervisor_cont | grep IPAddress | cut -d '"' -f4)
APP_ROOT=$(pwd)
ssh -t -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no   -o IdentitiesOnly=yes -i $APP_ROOT/sshkey.pem root@$SERVER_IP

