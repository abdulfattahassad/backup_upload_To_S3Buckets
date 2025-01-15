Subject : backup_upload_To_S3Buckets

STEP 1:  Require to install AWS  CLI  on ubuntu machine as following :

sudo apt update;

sudo apt install unzip curl -y;

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip";

unzip awscliv2.zip;

sudo ./aws/install;

STEP 2 : Create AWS IAM ROLE "Bash-role"  include  "S3FullAccess" and assoicate with EC2 Instance

STEP3 :  Create AWS IAM User "Bash-user" Include  "S3FullAccess" in order to run AWS CLI 

STEP4 : Generate Access Keys and Secrete Key  of IAM User "Bash-User" and add in AWS Configure 

STEP 5 : Create S3 Bucket with unique name and add it as value in variable called  "s3bucket" 

STEP 6:  add execute permission to script : chmod +x upload_backup_files_to_s3_bucket.sh

STEP7 : Run the script :  ./upload_backup_files_to_s3_bucket.sh
