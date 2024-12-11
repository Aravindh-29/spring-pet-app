FROM amazoncorretto:17
LABEL author = "Aravindh"
RUN mkdir /spc && chown nobody /spc && yum update -y && yum install -y git
USER nobody
WORKDIR /spc
ARG download_url="https://github.com/Aravindh-29/spring-pet-app.git"
RUN git clone ${download_url}
EXPOSE 8080
CMD ["java","-jar","spring-petclinic-3.4.0-SNAPSHOT.jar"]


