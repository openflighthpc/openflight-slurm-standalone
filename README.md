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
    - `default_username`: The default user on the system (e.g. on a Flight Solo image this will be `flight`) 
    - `default_password`: The password to set for this user to enable access to Flight Web Suite (defaults to `0penfl1ght`)
    - `access_host`: The hostname or IP address that this system can be reached on, used for both Web Suite and Desktop sessions
    - `generate_certs`: Whether the playbook should attempt to generate SSL certs for the Web Suite (initially attempting a Let's Encrypt certificate and falling back to a self-signed if Let's Encrypt isn't able to reach the provided `access_host`) 
- Run the playbook 
  ```shell
  ansible-playbook main.yml
  ```

