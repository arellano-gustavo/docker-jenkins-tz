docker stop jenkins
docker rm jenkins
docker rmi jenkins-tz-mexico:latest
docker build . -t jenkins-tz-mexico:latest

