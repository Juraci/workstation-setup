# Workstation Setup

This repository contains an Ansible playbook in order to ensure that our
development machines will have the same configuration.

## Assumptions

This playbook assumes that the target machine has an Ubuntu installation
and the ssh package already installed.

## Pre requisites

Ansible will access the target machine using ssh and, for that, you'll
need to copy your id there using:

```
$ ssh-copy-id -i ~/.ssh/id_rsa.pub <target-machine>
```
