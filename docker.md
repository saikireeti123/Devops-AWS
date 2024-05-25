# key concepts to learn docker 
  * containerization
  * docker architecture
  * docker networking
  * docker volumes
  * docker cli
  * docker compose
  * docker with CI/CD
  * dockerfile
  * container orchestration
## Installation of docker :
-----------------------------
commands to install docker in linux server.
cmd 'curl -fsSL https://get.docker.com -o install-docker.sh
sh install-docker.sh'

* docker client is access by everyone but to access the docker server we need add current user to docker group to access docker server.
  'sudo usermod -aG docker "username"'
* exit and re-login to server.
## Docker:
-----------
Docker is a containerization platform which allows the developers to package,ship  and run the application in a isolated area(which creates a specification required to run an application)called as a container. 

##  containerization
------------------------
containerization is technique that allows the developers to package the applications with their dependencies into a isolated area called container to make easy deployment  and manage applications  in different environments like dev,qa,staging and production.
* docker is not  used for client side applications,used for server side applications.
  
* Various container runtime:
---------------------------------
 containerd:
 Runc:
 oci(Open-Container-initiative):
 Cri-o:
## dockerfile
-------------
Dockerfile is a list of instructions to create a docker image which is used to automate the process of building an image.
common instructions to write a dockerfile :
-----------------------------------------------
"FROM: Specifies the base image for the new image.
 RUN: Executes a command in the shell. 
 COPY: Copies files or directories from the build context (the directory where the Dockerfile is located) into the image.
 WORKDIR: Sets the working directory in the image where the application will run.
 ENV: Sets an environment variable in the image to configure the application.
 EXPOSE: Exposes a port or a range of ports to the host machine.
 CMD: Specifies the default command to run when the container is started
 ENTRYPOINT: Specifies the entry point for the container. 
 VOLUME: Creates a volume in the image to persist the data even if container is deleted."


# port-forwarding:
--------------
port-forwarding is a technique that allows you to expose a container's internal port to the host machine, making it accessible from outside the container.
eg: docker -d -p 8080:80 nginx.
port 80 is the internal port number of the nginx server,8080 port is the access  outside of the container inside of the host machine.

Basic commands to use in docker:
refer[https://www.hostinger.in/tutorials/docker-cheat-sheet?utm_campaign=Generic-Tutorials-DSA|NT:Se|LO:IN-t2&utm_medium=ppc&gad_source=1&gclid=CjwKCAjw9cCyBhBzEiwAJTUWNa3PWpeHt6R1QVPRX-HbqIvIiQpKRAQ4RDKG15N--VABP0ng_UPDfxoC_okQAvD_BwE]

## activity lets create a container an d run it 
* create a nginx,apache containers and run steps to create container and run the run container in local machine
* "docker container run --name apache -d -P httpd
*  docker container ls
*  docker container stop 'container id/name' 
*  docker container rm 'container id/name'"
  
