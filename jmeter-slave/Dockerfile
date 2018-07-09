#Base de Jmater Tsoft
FROM tsoft/jmeter-base

#Metadatos
LABEL author="joabgonzalez" jmeter="slave"

#Puertos
EXPOSE 1099 50000

#Directorios
VOLUME ${JMETER_HOME}/bin/data

#Jmeter Slave
ENTRYPOINT ./bin/jmeter-server -D server.rmi.localport=50000 -D server_port=1099