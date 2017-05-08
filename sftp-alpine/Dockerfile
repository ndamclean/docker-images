FROM alpine

ENV SSH_USER=sftp
ENV SSH_PASS=DockerPassSFTP
ENV ROOT_PASS=RootPassSFTP

RUN apk add --no-cache bash openssh shadow
RUN ssh-keygen -A \
&& useradd -m -s /bin/bash $SSH_USER \
&& echo "root:$ROOT_PASS" | chpasswd \
&& echo "$SSH_USER:$SSH_PASS" | chpasswd \

ADD sshd_config /etc/ssh/sshd_config

EXPOSE 22

CMD /usr/sbin/sshd -D
