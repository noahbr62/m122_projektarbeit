#!/bin/bash
cwd=`pwd`
Git=($(find $3/$1 -name .git))
Repositories=($(find $4))
Subdircount=$(find $4 -maxdepth 1 -type d | wc -l)
Log=$(find $cwd -name logging.sh)

#Call Logging File
. logging.sh

#Check if Repository exists
if [ -d "$Repositories" ]; then
  LOGLEVEL=I
  :
  log I repository exists
else
  LOGLEVEL=W
  echo "No repositories found called $4"
  echo "Creating repositories called $4"
  mkdir $4
  log W repository does not exist
fi

#Check if Logging Script exists
if [ -e "$Log" ]; then
  LOGLEVEL=I
  :
  log I log script exists
else
  LOGLEVEL=W
  echo "No logging script, cannot log"
  log W repository does not exist
fi


#Check if GIT Repositories are in Repository
if [[ "$Subdircount" -eq 1 ]]
then
    LOGLEVEL=W
    echo "No git repositories"
    log W no git repositories in repository
else
    LOGLEVEL=I
    :
    log I git repositories in repository
fi

#For each repository call git log
for repository in $Git ;
do
    LOGLEVEL=S
    log S successfully extracted commits
    path=$(sed 's/.git//g' <<< $repository)
    cd $path
    base=$(basename $path);
    git log --pretty=format:$base',%cd,%H,%an' --date=format:'%Y%m%d' > $cwd/$2
done
