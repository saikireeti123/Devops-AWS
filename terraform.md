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

local provisioners: local provisioners `local-exec` provisioners run commands on the machine where Terraform is executed typically your local workstation.
remote provisioners: `remote-exec` provisioners run commands on the remote resource being provisioned (e.g., an EC2 instance). 

fault tolarenc:
------------------
 Fault tolerance in Terraform refers to the ability of the infrastructure to continue functioning even in the presence of faults or failures.

terraform backend
------------------------
Terraform Backend is a configuration option in Terraform that allows you to store and manage the state of your infrastructure in a remote or local location.
The backend is responsible for storing the state file and providing an interface for reading and writing state data.

terraform workspaces:
-----------------------
Terraform workspaces are a feature that allows you to manage multiple, distinct sets of Terraform state files within a single configuration. Each workspace is a separate environment with its own state file, enabling you to work on different configurations, infrastructure resources, or environments without interfering with each other. Workspaces provide a way to organize and isolate your Terraform deployments effectively.

Key points about Terraform workspaces:

Creating Workspaces: You can create new workspaces using the terraform workspace new <name> command. For example, terraform workspace new staging will create a new workspace named staging.

Listing Workspaces: You can list all existing workspaces using the terraform workspace list command. This will show you the available workspaces and indicate which one is currently active.

Selecting Workspaces: You can switch between workspaces using the terraform workspace select <name> command. For instance, terraform workspace select production will switch to the production workspace.

State Files: Each workspace has its own state file stored in the backend. This means that changes made within one workspace won't affect the resources managed by other workspaces.

Variables: Workspaces can be used to manage variables or configurations specific to different environments. You can define variables specific to a workspace by using workspace-specific variable files or by conditionally setting variables based on the workspace.

Environment Isolation: Workspaces allow you to maintain separate environments, such as development, staging, production, etc., within a single configuration file, streamlining the management of infrastructure across different environments.

Use Cases: Workspaces are often used to manage different stages of the deployment lifecycle, isolate testing environments, manage multi-region deployments, or handle blue-green deployments efficiently.