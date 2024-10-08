FROM openjdk:11-jre-slim

WORKDIR /app

COPY target/*.jar /app/api.jar
COPY wait-for-it.sh /wait-for-it.sh
#tornando o arquivo executavel
RUN chmod +x /wait-for-it.sh 

EXPOSE 8080

CMD ["java", "-jar", "api.jar"]