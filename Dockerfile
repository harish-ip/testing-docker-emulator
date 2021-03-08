FROM java:8
FROM maven
WORKDIR /
ADD insight68taf.jar /
RUN jar -xvf insight68taf.jar
ADD /target/configurations.properties src/test/resources/configurations.properties
# below cmd can be included, if we want to run test cases at the time of container creation.
# CMD ["mvn","test"]