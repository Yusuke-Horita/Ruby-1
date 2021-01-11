FROM centos:centos6

RUN mkdir /activerecord_lessons_3

WORKDIR /activerecord_lessons_3

COPY CentOS-Base.repo /etc/yum.repos.d/

RUN yum install -y git bzip2 gcc make readline-devel openssl-devel zlib-devel

RUN git clone https://github.com/sstephenson/rbenv.git ~/.rbenv

RUN echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
RUN echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
RUN exec $SHELL -l

RUN git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

RUN rbenv install -v 2.5.8

RUN rbenv global 2.5.8