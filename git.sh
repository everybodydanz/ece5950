# install git and check version (saw examples of people using git-all instead of git, not sure what is added)
sudo apt install git-all
git version

# Configure your EMAIL and FULL NAME, these do not need to match your github account info
git config --global user.email EMAIL
git config --global user.name "FULL NAME"

# we will use "git clone" to setup a local repo from the remote repo in github.
# To use existing files to create a new project, we use "git init".  Cannot do both.
cd ~/
mkdir git-repos
cd git-repos
git clone https://github.com/everybodydanz/ece5950.git
cd ece5950


# BRANCHING
# create a branch whenever you are updating/adding/removing files in the main repo
# create branch and switch to it
git checkout -b test_branch

# commands to see what branch you have selected
git status
git branch

# now you can freely make changes within your own branch, check your changes (e.g. to README.md)
git status

# discard changes to a file by getting the original one from the remote repo (e.g. README.md)
git checkout README.md

# delete the whole branch, first getting all the orginal files (use -D to force delete)
git checkout master
git branch -d test_branch

# add untracked files that are not in the master repo
git add git.sh
git add * # to add all files

# untrack a file
git reset HEAD git.sh

# delete a file and then untrack it
git rm filename
git add -u # remove many files


# COMMITTING
# commit all changes to your branch, which is done before merging the entire branch into the master
git commit README.md
git commit -a # all files
# you will be promted for a comment of what changes are made
# you can also append to your commit command the comment: -m "COMMENT"


# MERGING / PULL REQUESTS
# git status will not show unmerged changes between branches, use this
git log --branches --not --remotes

# before you push, make sure to generate a token from your github account to use instead of your p/w
# push this commit upstream to the remote repo (github), it will still be within your non-master branch
git push origin test_branch # you will be prompted to enter your github credentials

# credentials are cached for 15 minutes, increase the timer to 2 hours with this command
git config --global credential.helper 'cache --timeout==7200'

# now go into github to see your new branch, and create a pull request to merch the branch into master
# after merging click to delete branch
# on your own system, get the updated master branch and delete your local branch
git checkout main
git pull origin main
git branch -d test_branch

