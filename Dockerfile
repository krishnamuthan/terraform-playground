FROM codercom/code-server:latest

USER root
WORKDIR /root/project
COPY ./main.tf .

RUN curl -O https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y unzip curl powershell
RUN rm packages-microsoft-prod.deb
RUN curl -O https://releases.hashicorp.com/terraform/0.11.14/terraform_0.11.14_linux_amd64.zip
RUN unzip terraform_0.11.14_linux_amd64.zip
RUN rm terraform_0.11.14_linux_amd64.zip
RUN mv terraform /usr/local/bin/
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash
RUN code-server --install-extension mauve.terraform

ENTRYPOINT code-server
