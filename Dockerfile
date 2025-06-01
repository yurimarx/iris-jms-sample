ARG IMAGE=containers.intersystems.com/intersystems/iris:2024.1
FROM $IMAGE

WORKDIR /home/irisowner/dev/
COPY activemq-all-5.15.12.jar /home/irisowner/dev/activemq-all-5.15.12.jar

ARG TESTS=0
ARG MODULE="interoperability-sample"
ARG NAMESPACE="USER"

RUN mkdir /tmp/jms
RUN mkdir /tmp/processadas
RUN mkdir /tmp/emprocessamento

COPY teste.txt /tmp/jms/teste.txt

RUN --mount=type=bind,src=.,dst=. \
    iris start IRIS && \
	iris session IRIS < iris.script && \
    ([ $TESTS -eq 0 ] || iris session iris -U $NAMESPACE "##class(%ZPM.PackageManager).Shell(\"test $MODULE -v -only\",1,1)") && \
    iris stop IRIS quietly


