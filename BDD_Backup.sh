#!/bin/bash

# Définition des variables
DB_USER="utilisateur_de_la_base_de_donnees"
DB_PASS="mot_de_passe_de_la_base_de_donnees"
DB_NAME="nom_de_la_base_de_donnees"
BACKUP_DIR="/chemin/vers/le/dossier/de/sauvegarde"
REMOTE_SERVER="adresse_IP_du_serveur_distant"
REMOTE_USER="nom_utilisateur_sur_le_serveur_distant"
REMOTE_PATH="/chemin/de/destination/sur_le_serveur_distant/"

# Création du nom de fichier de sauvegarde avec la date actuelle
BACKUP_FILE="$BACKUP_DIR/$DB_NAME-$(date +%Y-%m-%d-%H-%M-%S).sql"

# Export de la base de données
mysqldump --user=$DB_USER --password=$DB_PASS --databases $DB_NAME > $BACKUP_FILE

# Transfert du fichier de sauvegarde vers le serveur distant
scp $BACKUP_FILE $REMOTE_USER@$REMOTE_SERVER:$REMOTE_PATH

# Suppression du fichier de sauvegarde local
rm $BACKUP_FILE
