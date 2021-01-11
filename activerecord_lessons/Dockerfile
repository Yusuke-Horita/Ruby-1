FROM centos:7

# rubyとrailsのバージョンを指定
ENV ruby_ver="2.5.8"

# ワークディレクトリを作成、設定
RUN mkdir /activerecord_lessons

WORKDIR /activerecord_lessons

RUN rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7

# 必要なパッケージをインストール
RUN yum -y update
RUN yum install -y git bzip2 gcc make readline-devel openssl-devel zlib-devel sqlite-devel
RUN yum clean all

# rbenvとruby-buildをダウンロード
RUN git clone https://github.com/sstephenson/rbenv.git /usr/local/rbenv
RUN git clone https://github.com/sstephenson/ruby-build.git /usr/local/rbenv/plugins/ruby-build

# コマンドでrbenvが使えるように設定
RUN echo 'export RBENV_ROOT="/usr/local/rbenv"' >> /etc/profile.d/rbenv.sh
RUN echo 'export PATH="${RBENV_ROOT}/bin:${PATH}"' >> /etc/profile.d/rbenv.sh
RUN echo 'eval "$(rbenv init --no-rehash -)"' >> /etc/profile.d/rbenv.sh

# rubyをインストール
RUN source /etc/profile.d/rbenv.sh; rbenv install ${ruby_ver}; rbenv global ${ruby_ver}