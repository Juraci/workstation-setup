# Workstation Setup

This repository contains an Ansible playbook in order to ensure that our
development machines will have the same configuration.

## Assumptions

This playbook assumes that the target machine has an Ubuntu installation
and the ssh package already installed.

## Pre requisites

### Packages

* ansible >= 1.9.2 
* ssh
* ssh-copy-id

Ansible will access the target machine using ssh and, for that, you'll
need to copy your id there using:

```
$ ssh-copy-id -i ~/.ssh/id_rsa.pub <target-machine>
```

## How to run it

1. Replace the IP in the hosts file with the IP of the target machine for setup
2. Run the following command replacing \<remote-use\> with the user of the target host that you wish to use:
```
$ ansible-playbook -i hosts playbooks/setup.yaml -e "user=<remote-user>" -K
```
