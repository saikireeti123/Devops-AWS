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
* containerization is technique that allows the developers to package the applications with their dependencies into a isolated area called container to make easy deployment  and manage applications  in different environments like dev,qa,staging and production.
* Docker is not  used for client side applications,used for server side applications.
  
* Various container runtime:
   * containerd:
   * Runc:
   * oci(Open-Container-initiative):
   * Cri-o:
## dockerfile
-------------
Dockerfile is a list of instructions to create a docker image which is used to automate the process of building an image.
common instructions to write a dockerfile :
" 
 * FROM: Specifies the base image for the new image.
 * RUN: Executes a command in the shell. 
 * COPY: Copies files or directories from the build context (the directory where the Dockerfile is located) into the image.
 * WORKDIR: Sets the working directory in the image where the application will run.
 * ENV: Sets an environment variable in the image to configure the application.
 * EXPOSE: Exposes a port or a range of ports to the host machine.
 * CMD: Specifies the default command to run when the container is started
 * ENTRYPOINT: Specifies the entry point for the container. 
 * VOLUME: Creates a volume in the image to persist the data even if container is deleted.   "


# port-forwarding:
--------------
port-forwarding is a technique that allows you to expose a container's internal port to the host machine, making it accessible from outside the container.
eg: docker -d -p 8080:80 nginx.
port 80 is the internal port number of the nginx server,8080 port is the access  outside of the container inside of the host machine.

## Basic commands to use in docker:
refer[https://www.hostinger.in/tutorials/docker-cheat-sheet?utm_campaign=Generic-Tutorials-DSA|NT:Se|LO:IN-t2&utm_medium=ppc&gad_source=1&gclid=CjwKCAjw9cCyBhBzEiwAJTUWNa3PWpeHt6R1QVPRX-HbqIvIiQpKRAQ4RDKG15N--VABP0ng_UPDfxoC_okQAvD_BwE]

## activity  
* create a nginx,apache containers and run steps to create container and run the run container in local machine
* "docker container run --name apache -d -P httpd
*  docker container ls
*  docker container stop 'container id/name' 
*  docker container rm 'container id/name'"

* Note: The place of the container exits on the next execution the root folder will be change.
* Eg: * For nginx container the root folder is('/')
    * For apache container the root folder is('/var/www/html')


# Docker image:
----------------
* Docker image is an template which is a lightweight standalone and executable package(Dependencies,application code etc) that used to create a container. 
* when the containers are removed the writeable layer is also removed. To overcome this storage drivers are used to store the data of the containers. 
* storage drivers : aufs, Btrfs,overlay,device mapper,zfs.
 
# Docker volume:
----------------
* Docker volume is a directory  that shared between the host machine and container which is used to store the data even container deleted or recreated.
* Three types of volumes:
    * Bind mount: These  volumes that are created by mounting a directory from the host machine into a container.
    * Named volumes:These volumes are created with a specific name.(var/lib/docker/volumes)
    * Anonymous volumes: These volumes are created without any specific name.

## Docker networking:
---------------------
* Firstly docker networking is handled by docker demon.
* Docker networking is a way to connect containers to each other and to the outside world.It is also called as Container Networking Model(CNM).
* Docker runs on it's own network,once we install docker it create a network interface on server/host-machine.
* By default the docker container speaks with another container by its ip-address.by creating our own network drivers we can speak with it's name.
* Network drivers are used to control network communication inside and outside of containers and used to customize the network configurations based on our specifications.
* There are different network drivers they are:
    * Bridge:It is used to connect two network interfaces and communicate with each-other without exposing their port number to host-machine
    * Host:The host network driver removes the network isolation between the Docker host and the containers. It allows containers to use the host’s network stack which means they have full access to the host’s network interfaces without network address translation (NAT). This is useful for applications that require high network performance or where you want containers to have the same network configuration as the host.
    * Overlay:The overlay network driver creates an internal network that spans across multiple Docker hosts.This driver is used in Docker Swarm mode to enable communication between containers running on different hosts in a cluster. It uses a network overlay that encapsulates the container’s traffic and forwards it to the correct destination across the hosts.
    * Macvlan: The macvlan network driver allows you to assign a MAC address to a container which makes it appear as a physical device on the network. This driver is useful when you want to assign a dedicated IP address to a container or need to integrate containers with an existing physical network infrastructure.
    * None: The none network driver disables networking for a container. It can be used in situations where you want to run a container with no network access, or you plan to manually configure networking inside the container.

## container orchestration:
---------------------------
* Container orchestration is the process of managing, scheduling, deploying, and scaling containerized applications.
* It involves automating the deployment, scaling, and management of containers across a cluster of machines.
* There are some of the popular orchestration tools :
      * Docker-swarm
      * K8s
      * apache mesos
      * ECS
      * ACI
* 