FROM node:12.18.3

ARG '-p 3000:3000'

RUN apk add --no-cache \
    python3 \
    py3-pip \
    # RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    # RUN unzip awscliv2.zip
    # RUN sudo ./aws/install
    # RUN apt-get update
    # RUN pip3 install awscli --upgrade




    # docker run --name jenkins \
    #     -u root \
    #     -d \
    #     -v $(pwd):/var/jenkins_home \
    #     -v /var/run/docker.sock:/var/run/docker.sock \
    #     -p 80:8080 \
    #     -p 50000:50000 \
    #     jenkins-aws-cli


    # docker build -t jenkins-aws-cli .