Terraform:
==========

* Terraform is a tool for building and changing, versioning infrastructure safely and efficiently.
* To express our infrastructure as a code terraform has its own domain specific language(DSL)
* To understand how terraform works, we need to know two key terms.

   * Resource: This is piece of infrastructure which you want to create.
   * Provider:  where the infrastructure has to be built/created.

![Preview](./images/image1.png) 
Terraform providers: https://registry.terraform.io/browse/providers

* Each provider provide resource , which we can  user to create template.
* In Terraform Arguments are the inputs which you provide and Attributes are the outputs which terraform provides upon execution.

* Lets write terraform template to configure  s3 bucket (resource and provider)

By default terraform is a single executable that is downloaded into  your machine, if you want to execute terraform we need providers.

====

provider.tf: (Provider file)
============
provider "aws" {
  region = "us-east-1"
}

main.tf:(Resource File)
==========
resource "aws_s3_bucket" "mybucket"{
  bucket = "qts3fromtf"
}
==========
* Scenario: Lets create the following architecture in AWS
The first version of the architecture to be created using terraform looks as shown below
![Preview](./images/image2.png)

* For authenticate terraform using shared credentials  file
   * Navigate to C:\Users\naray\.aws -> edit credentials file.
```
[default]
aws_access_key_id = your access key
aws_secret_access_key = your secret key

```
* if we want to give vpc id while creating subnet , we can give attribute like this for vpc id

``
resourve type.arn(resource name).id ->  if we doesnt k now vpc id , we can pass  vpc id like this format.

``
* we have 2 types of files
  * state File: when we create resources, the resources wil created in .tf file
  * plan File: what ever we are creating in .tf file,  plan will create after terraform apply.

  Variables are 3 files:
     * Input variables
     * Output variables
     * Local variables