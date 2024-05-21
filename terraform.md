Terraform installation:
----------------------------
 softwares requried
-------------------------------- 
git or git bash
windows/ubuntu

Terraform:
-----------
Terraform is an open-source infrastructure as code (IaC) tool that allows developers to provision and manage cloud resources in a declarative way.
 Terraform is an infrastructure as code tool that lets you define infrastructure resources in human-readable configuration files that you can version, reuse, and share.
variables
------------------
Terraform variables are used throughout your Terraform configuration, similar to variables in any programming language. They make your configuration more dynamic and flexible, and they enhance the parametrization of your code. With variables, you can easily accommodate different configurations without altering your code, as you can easily change only the values of these variables to achieve different use cases.
there are three types of variables in terraform
1.Local variables
2.Input variables(arguments)
3.output variables (attributes)

modules:
----------
modules are used to create reuseable components inside of our infrastructure.
modules are two types main module and child modules .
by using output of main module we can call the output value to child module

terraform taint/repalce:
----------------
terraform taint(degraded) identifies the resources degraded or damaged it will destroy and recreate the infra in the next plan or apply 

terraform state/state files:
-------------------
Terraform uses this state to map real-world resources to your configuration, track information, and boost efficiency for huge infrastructures. This state is stored by default in a local file named “terraform.tfstate”.when we collab with team we want to store into the s3 bucket remotely.


provisioners:
-----------------
 Terraform provisioners are used to execute actions on the resources after they are created or updated.

local provisioners: local provisioners `local-exec` provisioners run commands on the machine where Terraform is executed (typically your local workstation.
remote provisioners: `remote-exec` provisioners run commands on the remote resource being provisioned (e.g., an EC2 instance). 

fault tolarences:
 Fault tolerance in Terraform refers to the ability of the infrastructure to continue functioning even in the presence of faults or failures.

terraform backend
------------------------
Terraform Backend is a configuration option in Terraform that allows you to store and manage the state of your infrastructure in a remote or local location.
The backend is responsible for storing the state file and providing an interface for reading and writing state data.

terraform workspaces:
-----------------------

Terraform workspaces enable us to manage multiple deployments of the same configuration. When we create cloud resources using the Terraform configuration language, the resources are created in the default workspace. It is a very handy tool that lets us test configurations by giving us flexibility in resource allocation, regional deployments, multi-account deployments

we have different environment to work on like dev,staging, prod.