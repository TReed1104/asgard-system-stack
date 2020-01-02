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
1. Install Ubuntu Server 16.04

2. Update your system
```bash
sudo apt-get update
sudo apt-get upgrade -y
```

3. Install Docker
```bash
sudo apt-get install docker.io
```

4. Install Docker-compose from the docker repositories, the version available on the Ubuntu software center is several versions behind.
```bash
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose
```

5. Edit the MySQL variables in the docker-compose file
```bash
Edit lines 31-34 with your own credentials:
	environment:
		MYSQL_ROOT_PASSWORD: root_password
		MYSQL_DATABASE: db_name
		MYSQL_USER: user_name
		MYSQL_PASSWORD: password
```

6. Edit the server address in the Vuex store files
```bash
Edit line 10 in heimdall-remote-monitor/web/src/store/store.js, change 127.0.0.1 to your server address:
	From: serverAddress: "http://127.0.0.1/heimdall-api",
	To: serverAddress: "http://<server_external_ip>/heimdall-api",
```

7. Copy the example .cfg files and edit the connection string with your credentials you set in the docker-compose file, make sure you edit EACH of the new .cfg
```bash
cp heimdall-remote-monitor/api/configs/main.cfg heimdall-remote-monitor/api/configs/main.cfg
cp mimir-timetabling/api/configs/main.cfg mimir-timetabling/api/configs/main.cfg
cp yggdrasil-content-carousel/api/configs/main.cfg yggdrasil-content-carousel/api/configs/main.cfg
cp odin-usage-analyser/api/configs/main.cfg odin-usage-analyser/api/configs/main.cfg

Edit line 3 in heimdall-remote-monitor/api/heimdall.cfg:
	From: SQLALCHEMY_DATABASE_URI='mysql://<user>:<password>@<host_address>/<database>'
	To: SQLALCHEMY_DATABASE_URI='mysql://<user>:<password>@db-mysql:3306/db_asgard'

Edit line 3 in mimir-timetabling/api/mimir.cfg:
	From: SQLALCHEMY_DATABASE_URI='mysql://<user>:<password>@<host_address>/<database>'
	To: SQLALCHEMY_DATABASE_URI='mysql://<user>:<password>@db-mysql:3306/db_asgard'
```

8. Run the deployment script
```bash
sudo chmod +x deployment_scripts/deploy_production.sh
sudo ./deployment_scripts/deploy_production.sh
```

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
