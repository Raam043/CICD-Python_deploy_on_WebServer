# CICD-Python_deploy_on_WebServer

Release Linux server and install "Docker", "Python", "Jenkins" & "Git" applications.

```sh
yum update -y
yum install docker -y
systemctl enable docker
systemctl start docker
yum install pip -y
pip install docker-py
sudo chmod 666 /var/run/docker.sock
wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum upgrade
amazon-linux-extras install java-openjdk11 -y
yum install jenkins -y
systemctl enable jenkins
systemctl start jenkins
yum install git -y
```

Open Jenkins App using Public_IP and 8080 port ranga ex. `123.0.0.0:8080`
Create `Pipeline` Project and us below `Jenkins Script`

```sh
