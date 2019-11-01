FROM alpine
MAINTAINER Randy Ramos <rramos1295 \at\ gmail \dot\ com>

ARG SSH_USER
ARG SSH_PASS
ARG ROOT_PASS

RUN apk add --no-cache bash openssh shadow
RUN ssh-keygen -A \
&& useradd -m -s /bin/bash $SSH_USER \
&& echo "$SSH_USER:$SSH_PASS" | chpasswd \
&& echo -e "$ROOT_PASS\n$ROOT_PASS" | passwd

ADD sshd_config /etc/ssh/sshd_config

CMD /usr/sbin/sshd -D
