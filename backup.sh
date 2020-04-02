#!/bin/bash
cp /home/carlnys/*.ipynb /home/carlnys/vm-backups
cp /home/carlnys/*.pt /home/carlnys/vm-backups/saved_models
message="auto-commit from $USER@$(hostname -s) on $(date)"
GIT=`which git`
REPO_DIR=/home/carlnys/vm-backups
cd ${REPO_DIR}
${GIT} add --all .
${GIT} commit -m "$message"
${GIT} push git@github.com:carlstronaut/vm-backups.git master 
