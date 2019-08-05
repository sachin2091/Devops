---
- hosts: web 
  become: true
  
  tasks:
  - name: Set authorized key for user ubuntu copying it from current user
    authorized_key:
      user: ansible
      state: present
      key: "{{ lookup('file', lookup('env','HOME') + '/.ssh/id_rsa.pub') }}"
