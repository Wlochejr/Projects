## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

!https://drive.google.com/file/d/1Lww8VB2M-JeK4PalrJfB3tKLr6vpu6E_/view?usp=sharing

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the filebeat-playbook.yml file may be used to install only certain pieces of it, such as Filebeat.

  

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly efficient, in addition to restricting attacks to the network.


Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the logs and system metrics.


The configuration details of each machine may be found below.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.4   | Linux            |
| Web-1    |    WS    | 10.0.0.7   | Linux            |
| Web-2    |    WS    | 10.0.0.7   | Linux            |
| ELK-1    |ELK Stack | 10.1.0.4   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:174.86.182.134

Machines within the network can only be accessed by local machine 174.86.182.134.

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 | 174.86.182.134       |
|  Elk-1   | Yes                 | 174.86.182.134       |
| WS 1 & 2 | No                  |  10.0.0.4            |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because you can do this consistenly knowing all the builds are identical.

The playbook implements the following tasks:
- Install Docker.io
- Install pip3
- Install Docker Python Module
- Download and Launch a Docker ELK container
- Enable Service Docker on Boot

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

!https://drive.google.com/file/d/1NBuwk-nd6bft6vXysvEZs6_yWJlVVC3C/view?usp=sharing

### Target Machines & Beats
This ELK server is configured to monitor the following machines: Web-1 10.0.0.7 and Web-2 10.0.0.8

We have installed the following Beats on these machines: Filebeat and Metricbeat

These Beats allow us to collect the following information from each machine: Filebeat ships with modules for observability and security data sources that simplify the collection, parsing, and visualization of common log formats down to a single command. Metricbeat is a lightweight shipper that you can install on your servers to periodically collect metrics from the operating system and from services running on the server

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the install-elk.yml file to /etc/ansible.
- Update the hosts file to include the ip address of your ELK server
- Run the playbook, and navigate to http://[your.VM.IP]:5601/app/kibana on a browser to check that the installation worked as expected.



