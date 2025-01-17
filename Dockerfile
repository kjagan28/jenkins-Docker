from jenkins/jenkins:lts
user root
run apt-get update && \
apt-get -y install apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common && \
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - && \
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable" && \
apt-get update && \
apt-get -y install docker-ce
run usermod -aG docker jenkins
user jenkins
