REMOVE
usethis::use_build_ignore("tmp.sh")
usethis::use_git_ignore("tmp.sh")

git status
git add .
git commit -a -m "restore Get started."
git pull
git push

# master
git checkout master
git merge master

# dev
git checkout dev
git merge dev
git branch -d dev
git push --delete dev
git remote prune origin

# FEATURE
git checkout FEATURE
git merge FEATURE
git branch -d FEATURE
git push --delete FEATURE
git remote prune FEATURE
