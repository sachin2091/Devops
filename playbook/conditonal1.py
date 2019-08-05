---
- hosts: web
  tasks:
  - service: name=mysql state=started
    when: ansible_host=='ip-172-31-16-120.us-west-2.compute.internal'
