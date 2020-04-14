Terraform installation on linux


sudo yum update -y

sudo yum install wget unzip

sudo wget https://releases.hashicorp.com/terraform/0.12.2/terraform_0.12.2_linux_amd64.zip

sudo unzip ./terraform_0.12.2_linux_amd64.zip –d /usr/local/bin

pwd

PATH=${PATH}:/root
  
terraform -v


CONFIGURE AWS PROFILE


aws configure

AWS Access Key ID [None]: <your access key>
  
AWS Secret Access Key [None]: <your secret key>
  
Default region name [None]: <your region name>
  
Default output format [None]: ENTER

  
 Run the terraform template
 
 
 terraform init
 terraform plan
 terraform apply
 
 
 Run the script
 
 
 ./code.sh
 
 aws s3api list-objects --bucket christiel-bucket20201990



