---

- hosts: localhost
  vars: 
    age: 25
  tasks: 
  - name: i am a child or i am an adult 
    command: echo "i ama child"
    when: age<18 

  - name: i ama na adult
    command: echo " i ama na adut "
    when: age>=18
    register: temp_var

  - name: print
    debug: msg='yor result is {{ temp_var.stdout_lines}}'
