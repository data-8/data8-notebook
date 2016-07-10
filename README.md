# data8-notebook
Docker image for testing data-8/systemuser

This docker image is based on [data-8/systemuser](https://github.com/data-8/systemuser). It enables the user, ostensibly DS8 instructors or GSIs, to test modifications in an environment nearly identical to the one on https://data8.berkeley.edu. This is *not* intended to act as a substitute for student's data8 server accounts. The server exists so that students don't have to follow any of these steps. Later DSEP courses may eventually teach this kind of procedure to students.

The basics to using this are 1) install docker, 2) download the course's docker image, then 3) run the image.

## Install Docker
Install [Docker for Mac (Beta)](https://download.docker.com/mac/beta/Docker.dmg). The requirements are:
 - Mac must be from 2010 or newer with at least 4GB RAM
 - OS X 10.10.3 Yosemite or newer
 - VirtualBox prior to version 4.3.30 must NOT be installed

I have not tested this procedure on Docker for Windows (Beta).

## Download Docker Image
In a terminal window, run: `docker pull data8/data8-notebook`

## Run the Container
In a terminal window, run:

```
curl -O https://raw.githubusercontent.com/data-8/data8-notebook/master/docker-compose.yml
docker-compose up
```

Once this is running, open a web browser to http://localhost:8888.

## Installing Software
You can open a terminal window via New > Terminal, or invoke shell commands within a notebook by preceding them with an exclamation mark:

```
!pip install somelibrary==1.0.0
!pip install git+https://github.com/someaccount/somelibrary.git
!conda install --yes otherlibrary==2.0.2
```
