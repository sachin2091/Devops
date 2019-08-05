---

- hosts: web
  tasks:
    - shell: cat /etc/resolv.conf
      register: command_output

    - shell: echo "nameserver 10.0.250.10" >> /etc/resolv.conf
      when: command_output.stdout.find('10.0.250.10') ==  0

