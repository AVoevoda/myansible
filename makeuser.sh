#!/bin/bash
username=ansible
sshkey="ssh-rsa "
useradd -m -d /home/$username -s /bin/bash $username
mkdir -p /home/$username/.ssh && touch /home/$username/.ssh/authorized_keys
chown -R $username:$username /home/$username/.ssh
chmod 700 /home/$username/.ssh
chmod 600 /home/$username/.ssh/authorized_keys
echo $sshkey > /home/$username/.ssh/authorized_keys
usermod -aG sudo $username
echo "$username ALL=(ALL) NOPASSWD:ALL" >>  /etc/sudoers.d/$username