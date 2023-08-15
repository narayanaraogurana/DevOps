Terraform:
==========

* Terraform is a tool for building and changing, versioning infrastructure safely and efficiently.
* To express our infrastructure as a code terraform has its own domain specific language(DSL)
* To understand how terraform works, we need to know two key terms.

   * Resource: This is piece of infrastructure which you want to create.
   * Provider:  where the infrastructure has to be built/created.
![preview]image.png 
Terraform providers: https://registry.terraform.io/browse/providers

* Each provider provide resource , which we can  user to create template.
* In Terraform Arguments are the inputs which you provide and Attributes are the outputs which terraform provides upon execution.

* Lets write terraform template to configure  s3 bucket (resource and provider)

By default terraform is a single executable that is downloaded into  your machine, if you want to execute terraform we need providers.

terraform init -> when we execute terraform init , it will help to download required provider.
===
 Main commands:
  init          Prepare your working directory for other commands
  validate      Check whether the configuration is valid
  plan          Show changes required by the current configuration
  apply         Create or update infrastructure
  destroy       Destroy previously-created infrastructure

All other commands:
  console       Try Terraform expressions at an interactive command prompt
  fmt           Reformat your configuration in the standard style
  force-unlock  Release a stuck lock on the current workspace
  get           Install or upgrade remote Terraform modules
  graph         Generate a Graphviz graph of the steps in an operation
  import        Associate existing infrastructure with a Terraform resource
  login         Obtain and save credentials for a remote host
  logout        Remove locally-stored credentials for a remote host
  output        Show output values from your root module
  providers     Show the providers required for this configuration
  refresh       Update the state to match remote systems
  show          Show the current state or a saved plan
  state         Advanced state management
  taint         Mark a resource instance as not fully functional
  test          Experimental support for module integration testing
  untaint       Remove the 'tainted' state from a resource instance
  version       Show the current Terraform version
  workspace     Workspace management
====

provider.tf:
============
provider "aws" {
  region = "us-east-1"
}

main.tf:
==========
resource "aws_s3_bucket" "mybucket"{
  bucket = "qts3fromtf"
}
=========

