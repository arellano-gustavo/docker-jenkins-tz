FROM jenkins/jenkins

USER root

# Configure Timezone
RUN \
rm -f /etc/localtime && \
ln -s /usr/share/zoneinfo/America/Mexico_City /etc/localtime && \
echo 'America/Mexico_City' > /etc/timezone && \
dpkg-reconfigure --frontend noninteractive tzdata
COPY settings.xml /root/.m2/

#COPY settings-security.xml /root/.m2/
