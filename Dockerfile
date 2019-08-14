FROM codercom/code-server:latest

USER root
WORKDIR /root/project
COPY ./main.tf .

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y unzip curl
RUN curl -O https://releases.hashicorp.com/terraform/0.11.14/terraform_0.11.14_linux_amd64.zip
RUN unzip terraform_0.11.14_linux_amd64.zip
RUN rm terraform_0.11.14_linux_amd64.zip
RUN mv terraform /usr/local/bin/
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash
RUN code-server --install-extension mauve.terraform

ENTRYPOINT code-server