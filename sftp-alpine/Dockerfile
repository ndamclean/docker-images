FROM alpine

ENV SSH_USER=default
ENV SSH_PASS=DockerPassSFTP

RUN apk add --no-cache bash openssh shadow
RUN ssh-keygen -A \
&& useradd -m -s /bin/bash $SSH_USER \
&& echo "$SSH_USER:$SSH_PASS" | chpasswd \

ADD sshd_config /etc/ssh/sshd_config
EXPOSE 22
CMD /usr/sbin/sshd -D
