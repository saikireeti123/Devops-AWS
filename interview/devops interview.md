1. how to know user is root user or sudo user
2. how to create users in linux and how to give sudo permissions to user
3. how to display last 10 commands which we have used in linux
4. difference b/w docker file and docker compose
5. explain about dcoker file
6. explain about docker volumes
7. how to restart stopped container
8. difference b/w VM and docker 
9. why we use ansible and explain about any ansible playbook
10. what is jenkins profiles and how to create
11. how much you know about maven and about maven profiles
12. what is the pipeline stages and explain about build stage
13. one user wants to process only build step how do you give permissions to user to do only build step for particular job
14. explain about IAM and some databases in AWS
15. explain about kubernetes and what is the use and all
16. name space in docker
17. 3 containers are running, one container is consuming all the cpu memory (99%) will it be caused any issue to remaining containers? If yes what is the solution?
18. We are running on one container and that got failed. What is the possible ways to rectify that and what are the steps to take further 
19. How to check whether the particular process is running properly or not? in linux
20. I want to stop particular process using linus commands
21. What are all branches u have used in Jenkins
22. If build fails what are all the steps we should take
23. SED command completely
24. Can we delete content in a file by using SED command
25. How the automatic tests happens in Jenkins
26. Docker build option description
27. We have file called abc.txt in our system, how to check, in which location that file exists using linux command
28. Tell the branch names you have worked in GIT
29. Suppose we have a java.exe file and we have to run as a container, write a docker file and mention all the variables which we need to execute java.exe
30. Day to day activities other than CI/CD
31. Why we use docker containerization


Interview questions..
1. What is docker why we are using docker  difference between vm?
2. What is docker cloud & how it is different from docker hub what is the features over docker hub ?
3. What is docker compose ?
4.How you will link when the docker containers is in different virtual machine is there any configuration in docker compose file are any command or any variable?
5.What you will do if one master got corrupted, can we create multiple masters?
6. What you will do in case any pod deleted?
7.What is namespaces in kubernetes can you tell me some?
8.Can you tell me some commands using in kubernetes ?
9.Tell me the command to create cluster?
10.Difference between rc and rs?
11.What is kubernetes?
12 What is the difference between kubctl & kops?
13 Why you are using kubectl can you explin why we are using ?
14 Why we using kops?
15 What is the difference between docker cloud and docker swarm?
16 How to attach a volume in cluster at some time the container will be deleted then rs will re-create new container then how to attach that container automatically and how to restore the volume automatically to re-created container?
17 How many projects you used  kubernetes?
18 N number of docker containers deployed to different vms how will you manage there is no kubernetes installed?
19  If installed kubernetes how you will deploy this containers into kubernetes cluster?
20 Can you tell me the command for creating kubernetes cluster in vm?
21 How many nodes we required to create kubernetes cluster?
22  We have nearly 15 nodes in my organization all are decentralized so which node I need to create as a master? Is their any possibility to make all the machines as masters?
23 Our applications are decentralized I don’t want distributed environment if any thing happens to the master all will collapse , can we create multiple masters?
24 What is the difference between kubectl and minikube?
25 If any container down in my cluster how you will rectify?
27 How to write a script when the first command is executed then execute the below script?
A)     Java   --version
If [ $? –eq  0 ]
 Then
Echo “print the variable ”
Else
Echo “print the variable”
fi
28 How to print the exact file name by using command ?
A)  First assign path as a variable 
awk -F '/' '{print $(NF-1)}' <<< "$a"
29 Can you tell me the syntax for for loop and while loop?
30 How to dictionary in python?
A)     Dict={a:10,b:10}
31 How to add another variable c, with key 10 to the above dictionary ?
32 How to replace existing dictionary?
A)     Dict=[c:10]
33 How to print shell name?
34 How to assign a all the arguments to a single variable?
35 How to print the current process id of current shell?
36 How to know the file that is entering randomly to my script?
37How to divide two variables in shell script?
38 What is trap?
39 What is  shift in shell script?
40 How to run our script in background?
41 How to know the running back ground process id ?
42 What is $*, $$ and $@?
43 How to print only directories?
44 How to print the directory only started with number?
45 How to grep two strings at a time?
46 How to grep a string that is started with some string and ends with some string like a…..b ?
47 How to print string that starts with a?
48 Did you worked on arrays?
49 How will you give access of your script to a particular user?
50 How to access background running scripts and their pid?
51 How to run our script in foreground?

Ansible interview questions:
-----------------------------

1. What is  inventory file used for and default inventory host location?

2. What is ansible configuration file used for and its default path?

3. Do you write your inventory file?

4. How many types of variables and precedence?

5. Write the command to find the python version on nodes?

6. What is the file structure of ansible roles?

7. What happen when one node or instance is unreachable?

8. What happen when one task  is failed in playbook?

9. I have 20 servers , I want to install one package in 5 servers and other package in next 5 servers..like that How to write in ansible script for that…Explain?

10. What is the architecture of ansible?

11. How do I supply variables while executing the playbook in ansible?


12. Explain about the tags in ansible?


13. How to execute failure playbook again?



14. How is ansible different than any other configuration management tool?


15. Ansible playbooks are written in what format?


16. What is a module in Ansible?

17. What is inventory used for in ansible?

18. Name three places where ansible variables can be stored?

19. What connection ansible establishes with  linux and windows node.

20. Difference between Remote and local execution in ansible.

21. What is the purpose and location of  ansible.cfg file.

22. Name any two settings from ansible.cfg file.

23. Please write below a sample inventory file with host, group & group of groups syntax in it.


24. What is the difference between group_vars & host_vars directory?

25. What are adhocs commands used for & write below syntax of a adhocs command?

26. Write below ad hoc command to gather fact variables on all the hosts from the inventory file?

27. What format does ansible ad hoc command returns the output?

28. Name three types of modules in ansible?

29. Name any 10 modules in ansible that you have used.

30. How to list all the ansible core modules from command line.

31. How to display all the options/attributes for apt module from command line.

32. How can you check mandatory option for any module from command line?

33. What is setup module used for?

34. Write down sample global play declaration

35. Write down any two tasks from playbook with its proper format and names.

36. Whats is the difference between sudo and become module and its purpose.

37. Write down playbook syntax of starting ntp service on webserver and dbservers host group at once.

38. How to take user input from a playbook?

39. What is debug module used for in playbooks?

40. How to
store output of any task into a variable from playbook?

41. What are handlers used for in ansible and how is it different from tasks?

42. Conditional execution in ansible is used for what purpose and write down its syntax with small description?

43. What are templates used for and its format?

44. What are ansible roles and its purpose?

45. Command to generate ansible roles directory structure.

46. Name 5 directories from ansible roles.



60. Write a Ansible task that can copy the file to remote location with the ownership of Jboss?


61. What is local action in Ansible?


62. What are the roles in Ansible?


63. Write a playbook for installation of apache in ubuntu and centos?


64.How to create a role in ansible?


65. Different types of inventories in ansible?


66. if we want system information of machine how we will get the data with ansible like we use facter in puppet ?

67. In which language we write playbooks in ansible?

68. Activity that we use with ansibles or advantage Functionality or purpose of ansible using in your project?

69. How to launch an LDAP server using ansible?

70. How ansible works.. and what are the playbook written other than the basic playbooks ?

71. For example there are 4 aps server running and 4 websers running and we have a new code change and this change should automatically copy to these different servers using ansible, how I will come to know new code is generated.
Use Jenkins with POLL SCM option and after artifact is generated  using ansible to push suing copy module.
72. Have u done any automation like app goes down then for self healing of the app kind of the thing. 73 .Have  u written any playbook. Explain it
74. what is a dynamic inventory  in ansible?
75.  How can you manage cloud services with ansible?
76. How can you protect sensitive information in ansible?
77. How can you save the output of module execution in ansible?
78. How can you manage error handling?
79. what are conditionals in ansible?
80. How can you the fact varibales in ansible?
81. can we create an ansible module ?
82 .  How can you do provisioning with ansible?
83 . BASH Vs Python Vs Configuration Management Tools?


Docker:
1.Current roles & responsibilities?
2.What is Docker compose?
3.What is Docker server version?
4.What are the advantages of Docker?
6.How do create Docker image from Docker file?
8. What is Docker data centre?
9. What is Docker hub & uses?
10. What are the types of Docker networks?
11. How do you define network in the Docker compose file?
12. What are the basic parameters required in the Docker compose file?
14. What is overlay networking?
15. How to communicate between 2 containers present in separate network?
16. How to store the data present in the Docker container in the AWS?
17. If we define the Docker volume in the docker compose file is it possible to share
data with the EFS, NFS?
18. Differnce between image and container
19. How to Run containers
20. Why we need to mention dual ports(8080:8080) in docker run command
21. .Differnce between Copy and Add
22.How to write a docker file to deploy a war file
i. We have private repository and don’t have base images .how can deploy a war file?
ii. Write a simple docker file to deploy a war file by using base images?
23. Difference between docker compose and docker swarm
24. why we need to use docker compose?
25. Tell me about Docker Network.

Linux Interview questions:
-------------------------------

1. script/command to delete last word from every line in a file

 awk '{gsub("[a-zA-Z0-9]*$", "");print}'  <filename>

 To replace last word with hello in every line

awk '{gsub("[a-zA-Z0-9]*", "hello");print}'  <filename>

2.script/command to find the files with m
ore than 1gb size

find <path for directory> -size +1G -type f

3. What is Swap Space?
4.  What is the maximum length for a file name in Linux?
5.Which partition stores the system configuration files in Linux system?
6. Which command is used to uncompress gzip files?
7. What is the difference between soft and hard mounting points?
8. What are the file permissions in Linux?
9.  more questions are from sed, find and awk .
10. How to check Memory stats and CPU stats as a Linux admin?
11.How to reduce or shrink the size of LVM partition?
12. How can you enhance the security of password file?
13. What is the difference between Cron and Anacron?
14. What command is used to check the number of files, disk space and each user’s defined quota?
15. how can you manage memory in linux machines?
16. 18. What is the name and path of the main system log?
17. how to manage logical volumes?
18. Explain /proc filesystem?
19. What are the fields in the/etc/passwd file?
20.  How do you terminate an ongoing process?
21. How can you know the execution time of a command?
22. How can you append one file to another in  Linux?
23. How you can run an Linux program in the background simultaneously when you start your Linux Server?


AWS interview Questions
1. What is AWS?
2. What is IAM and its purpose?
3. What are policies in IAM?
5. Two types of access for IAM user?
6. What is EC2 service used for?
7. Name few types of EC2 instances?
8. Diff between T2 series and C series on Ec2 instances?
9. What are AMI’s?
10. What is AWS marketplace, what are community AMI’s?
11. How can you create your own AMI?
12. Enable termination protection option is for what?
13. What is EBS?
14. What are diffrent types of Volumes?
15. Can we create volume in one zone and attach it to a instance in the other zone?
16. How to take backups of EBS volume?
17.How to restore lost/corrupted volumes in from snapshots?
18. How to transfer volume from one zone to other zone?
19. How to resize EBS volumes.
20. Modify volume feature from AWS?
21. What are security groups?
22. Can we attach a Security group to multiple instances?
23. What is diff between inbound and outbound rules in SG?
24. What are Elastic IP’s and how is it different from normal Public IP assigned to a EC2 instance?
25. What are Key pairs?
26. What is ELB?
27. What are target groups?
28. What are health check settings in target group?
29. Describe advanced health check settings from Target groups?
30. Difference between internet facing and internal ELB?
31. What is VPC?
32. What is default VPC?
33. Can we create default VPC?
34. What is DNS host names option used for in VPC?
35. What are Subnets in VPC?
36. What is difference between Private and Public subnet?
37. How can you design a Highly available network in VPC?
38. What are Internet Gateways?
39. What are Nat gateways?
40. What are Route tables?
41. What are NACL?
42. What is VPC Peering?
43. What is RDS?
44. What are different DB softwares(Engines) supported by RDS?
45. Different DB instance types?
46. What is Multi AZ RDS instances?
47. Different storage types in RDS?
48. What is backup retention policy?
49. What is autoscaling? What triggers have you used for scaling?
50 .What is s3cmd used for?
51. What is AWS CLI used for? Give any real time scenario where you used AWS CLI?
56. What is Launch configuration in Autoscaling?
57. What is Route 53 used for, name few features of route 53?
58. Difference between AWS Region and Zone?
59. How will you identify which one is public subnet & private subnet in VPC


60. Is Amazon EBS storage is NAC/SAN storage?
61. Can AWS EC2 access s3 bucket without access key? 
62. I want deploy containers but have storage persistent problems in AWS and in
Docker?

1.  How are you using AWS in your project/company?
2.  Difference between IAM Roles & Policies?

3.  Describe your AWS Architecture in your company?
4.  What is RDS what is the work you have done in RDS?
5.  What is cloud formation?
6.  What is CDN?
7.  I have pdf files in an instance and they are eating away the space. I need these files,
what is solution do you provide for accessing these files?
1.  What is route 53? How do you configure it? And link it to ELB?
2.  What are private subnets? What is it needs?
3.  What is the need for having your application or instances in private subnets when you
    have public domain through route 53?
4.  Why we need to use Glacier?
5.  Tell me S3 reduced redundancy vs infrequent access?
6.  Tell me S3 Bucket level permissions ?
---------------------------
1. What is Version control system or Source code manager?
2. Benefits of VCS or SCM?
3. What is Git and What is a repository in GIT?
4. Difference between Git and SVN?
5. Two types of git authentication?
6. Branches in Git and its purpose?
What is the common branching pattern in GIT?
1. What is Pull requests?
2. How to install git in Linux & Windows?
3. How to setup repository though command line?
4.  How to setup repository in github and clone it?
5.  What is git clone command used for?
6.  What is git config command user for?
7.  Git config data is stored in what location?
8.  Git config global and local files?
9.  Content of git config file?
10. Git add command’s purpose?
11. How to remove/rename files in local git repo?
12. git commit command’s purpose?
13. How to sync local git repo data with github?
14. git fetch?
15. git merge?
16. git pull?
17. How to change branches in local git repo?
18. What is the difference between ‘git remote’ and ‘git clone’?
19. git status?
20. What is the function of ‘git rm’?
21. What is the function of ‘git checkout’ in git?
22. What is the use of ‘git log’?
23. Explain what is commit message?
24. How to setup github ssh authentication?
25. What is git webhooks?
33.Tell me the branching strategies you followed for your project?
1.  What is git rebase?
2.  What is git stash?
3.  What is the difference between git pull and git fetch?
4.  Difference between git and svn?
5.  Advantages of git compare with svn?
6.  Explain about staging area in git?
7.  How do you check after git merge …where merging is correctly or not?
8.  How to create branch and delete a branch?
9.  Do you get any conflicts while merging..how can u resolve conflicts?
10. How can u implement authentication and authorization in git?
11. What is the difference between git rebase and git merge?
12. How to merge the code?
13. Pull request in git hub - ---git pull
14. Forking a repository in git hub?
15. Diff between svn and git ---svn is centralized version control and git is Distributed Version Control.? 
16. What is forking in git repositories?
17. explain about soft and hard reset and their difference?
18. What kind of branching and merging you worked on GIT.
19. with this kind of environment and the git release branching, does it work in Agile methodology?
20. What is tagging in GIT and what is the diff between feature branching and tagging?

List of Cloudburn Interviews Questions:
1.Tell me about u r self briefly

2. Roles and Responsibilities


5. Write a playbook for installation of apache in ubuntu and centos

6. Document root of apache and tomcat

7. what is the configuration file in tomcat

8. Defaults port numbers(apache, tomcat, mysql)

9. How to connect client and server(windows to linux)

10. What is SSH 

11.What is Docker file commands

12.How to create a link between two containers

13.How to port forward in docker

15.How to create a job in Jenkins

16.What plugins are u used in your project

17.How to create a role in ansible

18.what are challenges  you are faced

19. Are u faced performance issue

20.How to launch a instance from AWS

21.how to merge the code

22. How to write custom scripts in Maven

23.how to find a specific line in a file

24. Are u involved in ShellScripts

25. How to configure yaml file in vagrant file


infosys interview Questions
--------------------------------------
Qstns I faced in infosys interview:
Technical:
1. Explain your roles and responsibilities.
2. Explain the stages in ur project declarative pipeline.
3. What is devops?
4. What is ci/cd?
5. What is difference in DevOps and CI/CD?
6. What are the git commands you use?
7. Difference in git fetch and git pull?
8. What is default port of Jenkins?
9. How to change Jenkins port no?
10. How to connect master slave?
11. How to checkout git code in Jenkins?
12. How to take backup of ur jenkins?
13. Do you have any script to launch slave nodes?
14. How do you resolve build failure?
15. Difference in soft link and hard link?
16. How to find a particular word from a file?
17. What is stop command?
18. What is Terraform provisioner?
19. What is Terraform module?
20. Is it possible to lock Terraform module?
21. What is AWS vpc?
22. How do you select availability zones using Terraform?
23. What is difference in S3 and other AWS storages?
24. How do you use S3 bucket in your project?
25. What is Terraform provider versioning?
26. How do you run docker container?
27. What is ansible playbook?
28. Syntax of ansible playbook
29. How u run ansible playbook?
30. Have you worked with any alerting monitoring tools?

Managerial:
1. Tell me about yourself
2. What are your daily routine as DevOps
3. What is ur team size
4. How scrum call happens
5. Do you take part in requirement gathering
6. Do you take calls with onshore and client?
7. Reason for change?
8. What is production issue u faced?
9. What was the exact reason?
10. How did you fix?
11. Do you write documentation
12. What other activities u do in ur project?
13. Who decides the server specification?
14. How u provision server?
15. Are you open to working in shifts?