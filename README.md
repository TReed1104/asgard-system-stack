# Asgard
## What is Asgard?
Asgard is a micro-service cluster designed and developed by the School of Computer Science's Technical team, at The Unniversity of Lincoln.

The cluster itself has been designed to be scalable microservice architecture, providing a cloud based "Infrastructure as a Service" software stack.

The project uses the following technologies:
- Docker
- NGINX
- MySQL
- Flask
- Node
- Vue.js

<br>

---

## Services
Asgard is currently provides the following services:
- Heimdall
- Mimir
- Yggdrasil

### Heimdall
Heimdall is a remote monitoring system, used to monitor the operational status of the computers in the School's computing labs. The system also provides a "Find a PC" system for our students.

### Mimir
Mimir is our timetabling engine, providing the ability for us to generate our own timetables for rooms and labs. Functionality is currently in the works to provide a direct line of communnication of the University central timetabling system.

### Yggdrail
Yggdrasil is a content carousel display system, providing the ability to remotely assign carousels of custom content to display screens across campus. Yggdrasil has the ability to communicate with Heimdall and Mimir directly, allowing for the embedding of the lab availability and calenders into its content carousels.

<br>

---

## Repository Structure
Under Construction

<br>

---

## Dependencies and Libraries
Under Construction

<br>

---

## Deployment and Installation
Under Construction
<br><br>Ubuntu 16.04/18.04 Install Notes:
* Ensure your server's package list is up-to-date
  * sudo apt-get update
* Install Docker
  * sudo apt-get install docker.io
* Install Docker-compose
  * sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/bin/docker-compose
  * sudo chmod +x /usr/bin/docker-compose
* MySQL settings in docker-compose
* Edit Vuex store files
  * /heimdall-remote-monitor/web/src/store/store.js
* Copy and config each api connection .cfg
  * /heimdall-remote-monitor/api/heimdall.cfg
  * /mimir-timetabling/api/mimir.cfg
* Testing scripts
  * /heimdall-remote-monitor/api/test_heimdall.py
  * /mimir-timetabling/api/test_mimir.py
* Deployment script
  * run_asgard_full_deploy.sh

<br>

---

## Testing
Under Construction

<br>

---

## Usage Guide
Unnder Construction

<br>

---
