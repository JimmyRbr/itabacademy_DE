sudo yum update -y
sudo yum install -y ruby wget
cd /home/ec2-user
pwd
wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install
ls
sudo chmod +x ./install
sudo ./install auto
sudo service codedeploy-agent status
sudo service codedeploy-agent start
sudo service codedeploy-agent status


