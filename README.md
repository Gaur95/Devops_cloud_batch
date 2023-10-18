# ec2 steps
```
Step by Step create Ubuntu Ec2 Instance on Amazon Cloud (AWS)
1. login or Sign up for an AWS account
2. Go to AWS ec2 Dashboard
3. Launch Ec2 Instance for Ubuntu
4. Choose Ubuntu Linux Image
5. Choose the Instance Type
6. Create a new Key Pair (important)
7. Configure Storage for Instance
8. Assign Public Ip address to Ec2 Instance
9. Review Instance Launch
10. Open HTTPS and HTTP ports (optional)
11. Connect to your Amazon Ec2 Instance
```


# AWS cloudwatch 
## configure systemlevel logs (apache logs )
## install python2.7 
```
sudo apt install python2.7 
```
## To install and configure CloudWatch Logs on an existing Ubuntu Server
```
curl https://s3.amazonaws.com/aws-cloudwatch/downloads/latest/awslogs-agent-setup.py -O
```
## RUN that python code
```
sudo python2.7 ./awslogs-agent-setup.py --region us-east-1
```
