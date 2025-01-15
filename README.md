# backup_upload_To_S3Buckets

# Require to install AWS  CLI  on ubuntu machine as following :

sudo apt update
sudo apt install unzip curl -y
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# Create AWS IAM ROLE "Bash-role"  include  "S3FullAccess" and assoicate with EC2 Instance

# Create AWS IAM User "Bash-user" Include  "S3FullAccess" in order to run AWS CLI 

# Generate Access Keys and Secrete Key  of IAM User "Bash-User" and add in AWS Configure 

# Create S3 Bucket with unique name and add it as value in varaible "S3bucket" 



