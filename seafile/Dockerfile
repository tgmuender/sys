FROM blitznote/debootstrap-amd64:16.04

RUN apt-get -y update\
 && apt-get -y install python\
 && apt-get -y install python2.7 libpython2.7 python-setuptools python-imaging python-ldap python-urllib3 sqlite3\

RUN curl -sSLO https://bintray.com/artifact/download/seafile-org/seafile/seafile-server_6.0.4_x86-64.tar.gz