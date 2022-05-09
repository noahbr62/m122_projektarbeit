#!/bin/bash
Git=($(find $3/$1 -name .git))
Repositories=($(find repositories))
Subdircount=$(find repositories -maxdepth 1 -type d | wc -l)

#Call Logging File
. logging.sh

#Check if Repository exists
if [ -d "$Repositories" ]; then
  LOGLEVEL=I
  :
  log I repository exists
else
  LOGLEVEL=W
  echo "No repositories"
  echo "Creating repositories"
  mkdir repositories
  log W repository does not exist
fi

#Check if GIT Repositories are in Repository
if [[ "$Subdircount" -eq 1 ]]
then
    LOGLEVEL=W
    echo "No Git Repositories"
    log W no git repositories in repository
else
    LOGLEVEL=I
    :
    log I git repositories in repository
fi

#Define Header for Output File
echo "Zielverzeichnis,Datum,Commit-Hash,Author" >> $2

#For each repository call git log
for repository in $Git ;
do
    path=$(sed 's/.git//g' <<< $repository)
    cd $path
    base=$(basename $path);
    git log --pretty=format:$base',%cd,%H,%an' --date=format:'%Y%m%d' >> $2
    LOGLEVEL=S
    log S successfully extracted commits
done
