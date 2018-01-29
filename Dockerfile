FROM openjdk:9

LABEL maintainer="Jair Batista Junior <jair.jr.batista@gmail.com>"

ADD https://github.com/lmenezes/cerebro/releases/download/v0.7.2/cerebro-0.7.2.tgz /opt

RUN cd /opt \
    && tar -xvzf cerebro-0.7.2.tgz \
    && mv cerebro-0.7.2 cerebro \
    && rm -f cerebro-0.7.2

ENV CEREBRO_HOME /opt/cerebro

#Exposição de portas e outros serviços
EXPOSE 9000

#Pasta de trabalho
WORKDIR ${CEREBRO_HOME}

CMD [ "bin/cerebro" ]