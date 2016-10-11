FROM ubuntu:16.04

RUN apt-get -y update\
        && apt-get -y install netcat
ADD dummyServer.sh /opt/dummyServer.sh
EXPOSE 9999

CMD ["/opt/dummyServer.sh"]
