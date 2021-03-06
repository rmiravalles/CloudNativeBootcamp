# Working Through Push Conflicts

- Merge conflicts happen when you merge branches that have competing commits, and Git needs your help to decide which changes to incorporate in the final merge.
- Often, merge conflicts happen when people make different changes to the same line of the same file, or when one person edits a file and another person deletes the same file.
- You must resolve all merge conflicts before you can merge a pull request on GitHub.
- To resolve a merge conflict, you must manually edit the conflicted file to select the changes that you want to keep in the final merge.
- There are two ways to resolve a merge conflict:
  - Using the GitHub conflict editor. This is indicated if the merge conflict is caused by competing line changes, uch as when people make different changes to the same line of the same file on different branches in your Git repository.
  - For all other types of merge conflicts, you must resolve it in a local clone of the repository, and then use the command line to push the changes.
- To resolve a conflict, GitHub performs what is known as a reverse merge. This means that the changes from the main branch are merged into your current working branch. This allows you to test the resolved code on your branch before you merge it into main. The main branch should be treated as production ready, bug-free code.
- [Resolving a merge conflict on GitHub](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/resolving-a-merge-conflict-on-github).
- [Resolving a merge conflict using the command line](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/resolving-a-merge-conflict-using-the-command-line).
- [Managing merge conflicts](https://lab.github.com/githubtraining/managing-merge-conflicts) learning module from [GitHub Learning Lab](https://lab.github.com/).
