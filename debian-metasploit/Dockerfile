FROM debian
MAINTAINER Randy Ramos <rramos1295 \at\ gmail \dot\ com>

RUN apt update && apt-get -y install \
  autoconf \
  bison \
  build-essential \
  curl \
  git-core \
  libapr1 \
  libaprutil1 \
  libcurl4-openssl-dev \
  libgmp3-dev \
  libpcap-dev \
  libpq-dev \
  libreadline6-dev \
  libsqlite3-dev \
  libssl-dev \
  libsvn1 \
  libtool \
  libxml2 \
  libxml2-dev \
  libxslt-dev \
  libyaml-dev \
  locate \
  ncurses-dev \
  openssl \
  postgresql \
  postgresql-contrib \
  wget \
  xsel \
  zlib1g \
  zlib1g-dev \
  ruby-dev \
  bundler \
  nmap \
  tmux \
  vim-tiny

RUN git clone https://github.com/rapid7/metasploit-framework /opt/metasploit
RUN cd /opt/metasploit && bundle install
RUN ln -sf /opt/metasploit/msf* /usr/bin/

CMD msfupdate && msfconsole
