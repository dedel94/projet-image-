# Utiliser l'image officielle Jenkins comme base
FROM jenkins/jenkins:lts

# Exposer les ports nécessaires
EXPOSE 8080
EXPOSE 50000

# Installer les dépendances supplémentaires si nécessaire (exemple: Docker)
USER root
RUN apt-get update && \
    apt-get install -y docker.io

# Revenir à l'utilisateur Jenkins
USER jenkins

# Lancer Jenkins
CMD ["java", "-jar", "/usr/share/jenkins/jenkins.war"]
