---

- hosts: web

  tasks:
    - name: add entry in file if not added
      command : cat /etc/resolv.conf
      register: output

    - name: condition
      command: echo "nameserver 10.0.250.10" >> /etc/resolv.conf
      when: output.stdout.find('10.0.250.10') == -1

  
