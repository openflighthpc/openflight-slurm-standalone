# OpenFlight Slurm Standalone

## Overview

An Ansible playbook to configure a Single Node Research Environment running SLURM and the Flight User/Web Suite.

## Prereqs

The steps in `prepare.sh` have been performed on the system.

## Notes

This playbook _configures_ the services within it, it does not perform any installation. This is partnered with the Flight Solo image that can be found in the AWS Marketplace.

## Usage

- Login as root
- Clone repository
- Set variables
    - `cluster_name`: The name for this cluster to go by, it will appear in the command prompt and web suite
    - `shared_username`: The user to be created that can access web suite
    - `shared_uid`: The ID for the shared user to be assigned
    - `shared_ssh_key`: An SSH public key to be assigned to the user (if left blank then no key will be added)
    - `shared_user_password`: The password for the user (defaults to `0penfl1ght`)
    - `access_host`: The hostname or IP address that this system can be reached on, used for both Web Suite and Desktop sessions
    - `generate_certs`: Whether the playbook should attempt to generate SSL certs for the Web Suite
- Run the playbook 
  ```shell
  ansible-playbook main.yml
  ```

