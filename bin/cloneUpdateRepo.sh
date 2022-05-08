repoListDirectory=$1;
cloneTargetDirectory=$2;
. logging.sh

#Check if repository-list-source is defined
LOGLEVEL=W
if [ -z "$repoListDirectory" ]
 then
  echo "please define a source for the repository-list"
  log W no path to repository-list as first argument defined
  exit;
fi;

#Check if target of cloned/updated repositories is defined
if [ -z "$cloneTargetDirectory" ]
 then
  echo "please define a target directory to clone into"
  log W no target directory as second argument defined
  exit
fi;

#fetch all local existing repositories and list them in a txt-file
touch localRepos.txt
for dir in $cloneTargetDirectory/*/; 
 do basename "$dir" >> localRepos.txt;
done

#remove local repos that are not listed in the repository-list
LOGLEVEL=I
cat localRepos.txt|grep -v '^$'|grep -v '^#'|while read reponame 
do
 if ! grep " $reponame" "$repoListDirectory"repolist.env
 then 
  rm -r "$cloneTargetDirectory"/"$reponame";
  log I removed local "$reponame"-repository
 fi
done

#loop over list of to be cloned repos
cat $repoListDirectory/repolist.env|grep -v '^$'|grep -v '^#'|while read repoinfo 
do
 repoArray=($repoinfo);
 git ls-remote "${repoArray[0]}" > /dev/null 2>&1
#check if repo-url is valid and skipp if not
 if [ "$?" -ne 0 ]; then
  echo "Unable to read from repository-url '${repoArray[0]}'"
  LOGLEVEL=W
  log W repo-url is not reachable, invalid or password protected
  continue;
 fi
#check if repo needs to be cloned or pulled
 if grep -q ${repoArray[1]} localRepos.txt; then
  git -C "$cloneTargetDirectory"/"${repoArray[1]}"/ pull;
  LOGLEVEL=I
  log I updated local repo ${repoArray[1]}
 else
  git clone ${repoArray[0]} "$cloneTargetDirectory"/"${repoArray[1]}"
  LOGLEVEL=I
  log I cloned extern repo ${repoArray[1]} into path $cloneTargetDirectory
 fi
done;

#remove list of local repos
rm -r localRepos.txt;

