#!/bin/bash
username=ansible
sshkey="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCp+rSHZwuM1WnU9PvlwL+uxNTS1Lqy4UQBcqSP29bFeUpFXvcanUHCyi2hhcBtSWbiv7MpFr/PzwKVwSFxgT21QGgUmr6C1zSZHLtk5D9LrmjnVbLJTj5D4xq+2fLgJ8/FY02w3naoexQe12iKpp7rh98v1ZC5UgmSYHmKKJNWTJ3NvniX0eO/xK34+tZceRuv4nzUzfLoKUevDUW1fBxFYbRH3OEb9Q4EthXhW4JVZBLqRjZgoiJ73PAux62ULsaO2HEtJRQmsc3yjJLMjOg8rgPOgfpCzDMRRYPlJv4ZYrIKZe6FIgt2tAPHKBMeUz25YfTFXYamlqQzUd5Z3kPw04yfvNYciFCj3cUnAotItQNCk744ZuglF7hLzl7iXTEsje1dF1jTlfzIVZ0V9GOfSPqrWnNt1YD26g2hdQHaSn3W/CxdIE6EA1pV4yD4hlR3aE87uUU4yxhBKoZJzMuOTNuK0+tkLjgh0Li1b6cfv42glUeSD3SzVJO12CTeCrc= voevoda_a@zephyrus"
useradd -m -d /home/$username -s /bin/bash $username
mkdir -p /home/$username/.ssh && touch /home/$username/.ssh/authorized_keys
chown -R $username:$username /home/$username/.ssh
chmod 700 /home/$username/.ssh
chmod 600 /home/$username/.ssh/authorized_keys
echo $sshkey > /home/$username/.ssh/authorized_keys
usermod -aG sudo $username
echo "$username ALL=(ALL) NOPASSWD:ALL" >>  /etc/sudoers.d/$username