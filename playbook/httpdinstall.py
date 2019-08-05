---

- hosts: web
  gather_facts: false
  become: true
  tasks: 
  - name: installing httpd service
    yum: name=httpd state=present
#  - name: starting httpd service
#    service: name=httpd state=restarted
    register: temp_var
    
  - name: debugging
    debug: var=temp_var 

  - name: printing successfull installation
    debug: msg='httpd installatin is successfull'
    when: temp_var.rc == 0 
    
  - name: printing failure message
    debug: msg='httpd installation failed'
    when: temp_var is failed
 
  - name: printing when already installed
    debug: msg='httpd is already installed'
    when: temp_var.changed == false and temp_var.rc == 0 
