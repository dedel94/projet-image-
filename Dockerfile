# Utiliser l'image officielle Nginx comme base
FROM nginx:alpine

# Copier les fichiers du répertoire 'public' dans le répertoire où Nginx s'attend à trouver les fichiers à servir
COPY ./ /usr/share/nginx/html

# Copier le fichier de configuration personnalisé Nginx, si tu en as un
# (par exemple, un fichier `nginx.conf` pour personnaliser le comportement de Nginx)
# COPY ./nginx.conf /etc/nginx/nginx.conf

# Exposer le port 80 pour que Nginx puisse servir le contenu
EXPOSE 80

# Démarrer Nginx en mode non interactif
CMD ["nginx", "-g", "daemon off;"]