# ansible sardor_rtx -i $(pwd)/ansible_hosts -m ping
rm -f logs
ansible-playbook -v playbook.yml -i $(pwd)/ansible_hosts