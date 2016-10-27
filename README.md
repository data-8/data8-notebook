# data8-notebook
Docker image for testing data-8/systemuser

This docker image is based on [data-8/systemuser](https://github.com/data-8/systemuser). It enables the user, ostensibly DS8 instructors or GSIs, to test modifications in an environment nearly identical to the one on https://data8.berkeley.edu. This is *not* intended to act as a substitute for student's data8 server accounts. The server exists so that students don't have to follow any of these steps. Later DSEP courses may eventually teach this kind of procedure to students.

The basics to using this are 1) install docker, 2) download the course's docker image, then 3) run the image.



## Mac

### Install Docker
The Mac requirements are:
 - Mac must be from 2010 or newer with at least 4GB RAM
 - OS X 10.10.3 Yosemite or newer
 - VirtualBox prior to version 4.3.30 must NOT be installed

Download and install [Docker](https://www.docker.com/products/docker#/mac).

### Download Docker Image
Open Applications > Utilities > Terminal and run: `docker pull data8/data8-notebook`

### Download Docker Compose File
In a terminal window, run:
```
curl -O https://raw.githubusercontent.com/data-8/data8-notebook/master/docker-compose.yml
```

### Run the Container
In a terminal window, run:
```
docker-compose up
```

Once this is running, open a web browser to http://localhost:8888.

## Windows

### Install Docker
The Windows requirements are:
 - PC must be running Windows 10 Professional or Enterprise, 64-bit.

Download and install [Docker](https://www.docker.com/products/docker#/windows).

### Download Docker Image
1. Type Windows-R and enter `cmd`. This starts a terminal window.
1. In the terminal window, run: `docker pull data8/data8-notebook`

### Download Docker Compose File
Visit https://raw.githubusercontent.com/data-8/data8-notebook/master/docker-compose.yml and right-click in your browser window to `Save as...` the document.

### Run the Container
In a terminal window, change directory to where you saved the docker-compose.yml file. For example `cd \Users\myname\Downloads`. You may need to rename the file, e.g. `rename docker-compose.yml.txt docker-compose.yml`.

Then run:
```
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
