### Working with Branches in `git` and `GitHub`

See Steps 5-9 of this [article](https://product.hubspot.com/blog/git-and-github-tutorial-for-beginners) for some details.

#### List branches
`> git branch`

#### Create a new branch called `test_branch_at`
`> git checkout -b test_branch_at`

List the branches again to see the new branch:  

`> git branch`

You'll see that you're now working on the new branch.

You can also see your working branch by running:  

`> git status`

Next, you would add some work to your branch and commit it.  

#### Pushing the branch to GitHub
If you wish to share the work with others, push the branch to GitHub like this:  

`> git push origin test_branch_at`

You will see a message like this:  

```
remote: Create a pull request for 'test_branch_at' on GitHub by visiting:
remote:      https://github.com/UVADS/ds2001/pull/new/test_branch_at
```

If you want to merge the branch with `main`, you will issue a *Pull Request*.

#### Deleting the Branch

Delete locally:

`> git branch -d test_branch_at`

Delete remotely (from GitHub):

`> git push origin --delete test_branch_at`

This will remove the branch from the GitHub repo.
