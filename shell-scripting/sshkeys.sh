#!/bin/bash

for server in $(cat servers)
do
	ssh ${server}
	echo `adduser ansible`
	echo "ansible" | passwd --stdin ansible
        echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDX3L/LY3J/a4ffUNpkoTJInOzKd9SRFN3RKbeO/hhE                                                                                        MBdQp84BaR/NfXTHtOW+jE+0Kw5RFnO853G0Hi+FYVs5AujUJV8YsmyNWARWhQqlOIXzuRfCzB1wUQqO                                                                                        v+cSxDaPOyzH5maqNLDc5l/e19zLi15vslfQD0RVmf6d2uPHLt2CynXqsWggLptNmh7xG2Rd3S6Nayc6                                                                                        s1o5K6Sxu7TiFxampjcRSHqkuEk2uTKzQOAfNEMZZLV94aj3h4tV2UgfyWISYdpJjMG8rLBuypp08Rev                                                                                        uXVbL94tXOaOXcEVetgCYXKwTnS4QVZr3VEW7fuPrFjYIXC/XRyr4MaVNAqB root@ip-172-31-16-1                                                                                        20.us-west-2.compute.internal" >> /home/ansible/.ssh/authorized_keys
done

