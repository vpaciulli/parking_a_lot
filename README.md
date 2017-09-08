# Parking a Lot

Study system to control parking with eletronic components and web services.

Run instructions will be displayed here.

## GitHub's setup

You just need to follow the instructions on the links above.

1. [Setup git](https://help.github.com/articles/set-up-git)
2. [Setup ssh-keys](https://help.github.com/articles/generating-ssh-keys)
3. Create a fork of the repository (go [here](https://help.github.com/articles/fork-a-repo) for more help with this)
4. Clone your forked repository
    ````
    git clone https://github.com/{your_username}/parking_a_lot.git
    ````
5. In this repository add the main repository as a remote
    ````
    git remote add upstream git@github.com:vpaciulli/parking_a_lot.git
    ````
6. If you wish you can use `git config push.default current` to make `git push` default to pushing the current branch to origin.

## CODING WORKFLOW

### Making Changes

For every change you will make a topic branch. So in your fork of the repository
````
git checkout master
git pull --rebase upstream master
git checkout -b <your-branch-name>
````

Do all of your work in your topic branch. If you need to work with another developer he can pull your branch to his repository and you can pull his changes back to your branch.

All changes _must_ be accompanied by tests!

Once you have thoroughly tested your change locally go to Github (or on the command line) open a pull request from your-repository/your-branch to upstream/stg. Everyone will
see this pull request and another developer will do a code review. If he has any comments or suggestions he will make them on the pull request. Add any changes as more commits
to the same branch. Once you are both satisfied he will add a comment with :+1: that is the `:+1:` emoji. At that point you can merge your change into stg.

If you want feedback earlier it is a good idea to open the pull request _at that time_. You can then either reference the person you want in the comments with @github-name or just
email the person asking for help. But make it clear the pull request is not ready for a full review by putting a warning to this effect somewhere it the title, description, etc.

### Merging Changes

Once your pull request has been approved it is time to merge your change. Back in your fork do the following:

````
git checkout stg
git pull --rebase upstream stg
git merge --squash <your-branch-name>
...solve any conflicts if they occur...
git commit
...review changes and write good message...
git push upstream stg
````

It is very important that this commit message be detailed. It should have a title (first line first 50 characters) and then a detailed explanation. If you make a commit in your branch
with a good commit message in will show up in the list and you can delete everything around it. Or copy&paste the description from your pull request. If at this stage you use the -m flag
to git I will find you and take away the m key from your keyboard.


You should also add at the end of your commit message: ``Closes #number-of-pull-request``.
That make your pull-request _automagically_ be closed when merged on master.
For example:

````
Super cool feature

Adds a super cool feature
- Improve coolness
- 142% improvement in performance

Closes #1
````

After this, deploy your change to parking_a_lot:stg as discussed below.

