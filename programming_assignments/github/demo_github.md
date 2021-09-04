### Github workflow  

We will spend time in class on the following:  
- forking a repo (this makes a copy in your GitHub account, which you can modify)  

1) We will fork the Apache Spark repo, which lives here:  
https://github.com/apache/spark

2) cloning the forked repo to local machine (this copies the fork to your local)
3) creating a new file locally and adding to version control (git add, git commit)
4) push the file back to GitHub (git push)
5) discuss how to get repo updates with git pull

**Details**  
To accomplish steps 3-5, it's preferable to use the command line.  
You'll want to open a terminal (in Windows, PowerShell is a good option).  
Let > denote the command prompt in terminal.

When you are ready to stage a file called file.txt for commit, enter:

`> git add file.txt`

Note that multiple files can be staged.  
When you are ready to commit your file(s), enter:  

`> git commit -m 'a message to describe what you are committing'`

where `-m` denotes a message flag

The committed files will now be tracked by `git`.

To push the file back to GitHub, enter:

`git push`

Note this will push the commit to the repo that you cloned.

