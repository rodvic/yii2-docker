# whoami

## Alejandro Rodríguez Vicente

### Formación

Técnico Superior en Administración de Sistemas Informáticos (2011)

Grado en Ingeniería Informática en Sistemas de Información (2015)

### Situación laboral

Release Engineer => Control de versiones de desarrollo, empaquetado del software y despliegue automatizado (creación de la infraestrucura, instalación y configuración de software)

DevOps => metodología de desarrollo software

Ingenieros de sistemas con capacidades específicas para integrarse en equipos DevOps

> Ref: https://www.paradigmadigital.com/techbiz/que-es-devops-y-sobre-todo-que-no-es-devops/

Telefónica I+D => Pragsis => ING => Telefónica Digital

## Tecnologías

- Git
- Ansible
- Linux => RHEL/Centos | Debian/Ubuntu
- Openstack


- Hadoop Stack => Hortonworks/Cloudera


- Docker


- AWS
- Azure


- Kubernetes


- Databricks

## Contacto

- Linkedin: https://www.linkedin.com/in/alejandrorodvic/
- Github: rodvic
- USAL: alejandro_rv@usal.es

> Azure: azusalarv01@outlook.com

## Cloud

AWS - Azure - Google Cloud

![Cloud](images/cloud.png)

# Yii2 PHP Docker Image

> Repository: https://github.com/yiisoft/yii2-docker

> Fork: https://github.com/rodvic/yii2-docker

## Setup

    cp .env-dist .env

Adjust the versions in `.env` if you want to build a specific version.

## docker-compose

> Reference: https://www.yiiframework.com/doc/guide/2.0/en/tutorial-docker

Building

    docker-compose build

Start all services in your stack, in the background

    docker-compose up -d

Executes a bash in a running php service

    docker-compose exec php bash

Create new basic proyect

    composer create-project yiisoft/yii2-app-basic /app

> Build from repository:

    docker-compose run --rm php composer install

# Azure Container Registry

> Reference: https://docs.microsoft.com/es-es/azure/container-registry/container-registry-get-started-docker-cli

AZ login

    az login --use-device-code

Container Registry login

    az acr login --name preyii

Enable Administrator Account

    az acr update -n preyii --admin-enabled true

# Docker build and push

vendor directory must exist (composer install): 

    _host-volumes/app/vendor/

Docker build:

    docker build -t yii2basic:latest .

Docker tag:

    docker tag yii2basic:latest preyii.azurecr.io/yii2basic:latest

Docker push:

    docker push preyii.azurecr.io/yii2basic:latest

# Azure Virtual Machines

Username: adminuser

Image: Ubuntu Server 18.04 LTS

SSH Access

    ssh adminuser@PUBLICIP
    sudo -i

Install AZ CLI

    curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

Install docker service

    sudo apt-get update
    sudo apt-get install -y docker.io

AZ login

    az login --use-device-code

Container Registry login

    az acr login --name preyii

Docker Run

    docker run -d -p 80:80 preyii.azurecr.io/yii2basic:latest

> Add port 80 to Network Security Group

# Azure Deployment Services

## App Services

## Container Instances

## AKS

# Other Azure Services

## Database Services

## Databricks
