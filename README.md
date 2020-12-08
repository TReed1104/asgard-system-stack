# Asgard
## What is Asgard?
Asgard is a micro-service cluster designed and developed by the School of Computer Science's Technical team at The Unniversity of Lincoln.

Each service has been designed and developed with the microservice architecture pattern in mind for scalability and reliability.

The following template repositories are available for generating new services or frontend apps for the stack:

- [Frontend VueJs Web Apps](https://github.com/treed1104/template-webpack-vue) - Javascript/Typescript Vue
- [Backend REST API](https://github.com/TReed1104/template-flask-restful) - Python3 Flask

<br>

---

## Services
Asgard is currently provides the following services:
- Heimdall
- Mimir
- Yggdrasil
- Odin

### Heimdall
Heimdall is a remote monitoring system, used to monitor the operational status of the computers in the School's computing labs. The system also provides a "Find a PC" system for our students.

### Mimir
Mimir is our timetabling engine, providing the ability for us to generate our own timetables for rooms and labs.

### Yggdrail
Yggdrasil is a content carousel display system, providing the ability to remotely assign carousels of custom content to display screens across campus. Yggdrasil has the ability to communicate with Heimdall and Mimir directly, allowing for the embedding of the lab availability and calenders into its content carousels.

### Odin
Odin is a service developed for analysing the utilisation of the facilities and functionality of the service in the Asgard System Stack.

<br>

---

## Repository Structure
Under Construction

<br>

---

## Dependencies and Libraries
### Deployment
- Docker
- Docker-compose

### Reverse Proxy
- NGINX

### Database
- Mysql

### Frontend
- Node
- Webpack
- Babel
- Javascript
- Typescript
- Vue
- Sass
- Scss
- Yarn
- Axiom

### Backend
- Python
- Flask
- Flask-Restful
- SQLAlchemy
- JSON

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
Edit lines 33-36 with your own credentials:
	environment:
		MYSQL_ROOT_PASSWORD: root_password
		MYSQL_DATABASE: db_name
		MYSQL_USER: user_name
		MYSQL_PASSWORD: password
```

6. Edit the server address in the Vuex store files
```bash
Edit line 10 in heimdall-frontend/app/src/store/store.js, change 127.0.0.1 to your server address:
	From: serverAddress: "http://127.0.0.1/heimdall-api",
	To: serverAddress: "http://<server_external_ip>/heimdall-api"

Edit line 10 in mimir-frontend/app/src/store/store.js, change 127.0.0.1 to your server address:
	From: serverAddress: "http://127.0.0.1/mimir-api",
	To: serverAddress: "http://<server_external_ip>/mimir-api"

Edit line 10 in yggdrasil-frontend/app/src/store/store.js, change 127.0.0.1 to your server address:
	From: serverAddress: "http://127.0.0.1/yggdrasil-api",
	To: serverAddress: "http://<server_external_ip>/yggdrasil-api"
```

7. Copy the example .cfg files and edit the connection string with your credentials you set in the docker-compose file, make sure you edit EACH of the new .cfg
```bash
cp heimdall-api/api/configs/main.cfg heimdall-api/api/configs/main.cfg
cp mimir-api/api/configs/main.cfg mimir-api/api/configs/main.cfg
cp yggdrasil-api/api/configs/main.cfg yggdrasil-api/api/configs/main.cfg
cp odin-api/api/configs/main.cfg odin-apir/api/configs/main.cfg

Edit line 3 in heimdall-api/api/heimdall.cfg:
	From: SQLALCHEMY_DATABASE_URI='mysql://<user>:<password>@<host_address>/<database>'
	To: SQLALCHEMY_DATABASE_URI='mysql://<user>:<password>@db-mysql:3306/db_asgard'

Edit line 3 in mimir-api/api/mimir.cfg:
	From: SQLALCHEMY_DATABASE_URI='mysql://<user>:<password>@<host_address>/<database>'
	To: SQLALCHEMY_DATABASE_URI='mysql://<user>:<password>@db-mysql:3306/db_asgard'

Edit line 3 in yggdrasil-api/api/mimir.cfg:
	From: SQLALCHEMY_DATABASE_URI='mysql://<user>:<password>@<host_address>/<database>'
	To: SQLALCHEMY_DATABASE_URI='mysql://<user>:<password>@db-mysql:3306/db_asgard'
```

8. Run the deployment script
```bash
sudo chmod +x deployment_scripts/deploy_production.sh
sudo ./deployment_scripts/deploy_production.sh
```
