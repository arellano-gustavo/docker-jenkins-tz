docker stop jenkins
docker rm jenkins

# Cambiar solo esta linea acorde a lo requerido:
RUTA=/Users/garellano/borrar/jen/jenkins-store

docker run -d \
-p 9090:8080 \
--name jenkins \
-v $RUTA:/var/jenkins_home \
jenkins-tz-mexico:latest

