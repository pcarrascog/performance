# Base de OpenJDK
FROM openjdk:8-jre-slim

# Argumentos de la Compilacion
ARG JMETER_VERSION=3.3

# Dependencias y Usuario
RUN apt-get -y update \
    && apt-get install -y --no-install-recommends telnet iputils-ping \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir /jmeter

# Espacio de trabajo
WORKDIR /jmeter

# Jmeter
ADD https://archive.apache.org/dist/jmeter/binaries/apache-jmeter-${JMETER_VERSION}.tgz .

# Permisos y Espacio de Trabajo
RUN tar -zxvf apache-jmeter-${JMETER_VERSION}.tgz \
    && rm -f apache-jmeter-${JMETER_VERSION}.tgz \
    && mv apache-jmeter-${JMETER_VERSION} apache-jmeter \
    && mkdir -p apache-jmeter/bin/tests \
    && mkdir -p apache-jmeter/bin/data \
    && mkdir -p apache-jmeter/bin/results

# Variable de Entorno
ENV JMETER_HOME /jmeter/apache-jmeter

# Direcotio de Trabajo
WORKDIR ${JMETER_HOME}

# Librerias
COPY ./lib.tgz .

# Agregando librerias
RUN tar -zxvf lib.tgz --directory ./lib \
    && rm -f lib.tgz

# Variable de Entorno
ENV PATH ${JMETER_HOME}/bin:${PATH}

# Metadatos
LABEL author="joabgonzalez" jmeter="base" jmeter_version=${JMETER_VERSION}