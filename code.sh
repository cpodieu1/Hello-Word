#!/bin/bash

#Maintenant: Christiel Podieu

# IF YOUR SYSTEM DIDN'T HAVE PYTHON AND AWS CLI INSTALL
# INSTALL PIP
    #curl -O https://bootstrap.pypa.io/get-pip.py
    #python get-pip.py --user
    #export PATH=~/.local/bin:$PATH
    #source ~/.bash_profile
    #pip --version
# INSTALL AWS CLI
    #pip install awscli --upgrade --user
    #aws --version
# CONFIGURE AWS PROFILE
    #AWS Access Key ID [None]: <your access key>
    #AWS Secret Access Key [None]: <your secret key>
    #Default region name [None]: <your region name>
    #Default output format [None]: ENTER

sleep 5

echo
echo "removing file and folders if exist"
rm file1.txt 2>/dev/null
rm file2.txt 2>/dev/null

sleep 5
echo
echo "creating files and folders"
echo
echo 'this is my first project I hope I did my best.' > file1.txt
echo 'The world would find a solution for the Convid-19' > file2.txt
echo
echo "two files have been created"

sleep 5
echo
echo "copying files and folders into s3 bucket"
aws s3 cp file1.txt s3://christiel-bucket20201990 --acl public-read
aws s3 cp file2.txt s3://christiel-bucket20201990 --acl public-read
sleep 5
echo
echo "listing all the content of the bucket"
aws s3 ls s3://christiel-bucket20201990

sleep 5
echo
echo "listing bucket info"
aws s3api list-objects --bucket christiel-bucket20201990
