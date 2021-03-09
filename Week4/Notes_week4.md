# GitHub and Source Control

- No need to store the code locally
- A means to track and manage changes
- Source of truth
- A way to protect the code

## Source Control vs Version Control

- Version control manages the versions of the code.
- Source control stores the code in a repository.
- Version control allows for comparisons and diffs.

## Source control best practices

- **DON'T** commit passwords and secrets.
  - Be very careful when deleting information from the code stored in source control. The commit history keeps all the changes made to the files. Even if the file is deleted from the repo, it still lives in the commit history.
- Write good commit messages, short and descriptive.
- Follow branching best practices. Ensure that you're committing code to the correct branch, and avoid committing code directly to the main branch.
- **Commit often**.
- Test before you commit :exclamation: :exclamation:

## Centralzied Version Control

- One server.
- Everyone uses the code stored in this one server.
- Need Internet connection.
- Single point of failure.

## Distributed Source Control

- Every developer clones a copy of a repository and has the full history of the project in his or her own local machine.
- Much faster.

Strengths | Best Used For
------------ | -------------
Cross platform support | Small and modular code bases
An open source friendly code review model via pull requests | Evolving through open source
Complete offline support | Highly distributed teams
Portable history | Teams working across platforms
An enthusiastic growing user base | Greenfield code bases

## Concepts

- **Fork**: A point-in-time copy of an entire GitHub repository from the source. This repository won't automatically keep up to date with the original repository but will allow you full access to the forked repository. This is a required step to creating pull requests to a repository you don't own. **A fork doesn't exist in Git. It is a concept that only exists in GitHub.**
- **Clone**: An entire copy of a remote repository (including forked repositories).
- **Branch**: A branch is a pointer to a specific commit. The default branch in Git is called *master* or *main*. As you start making commits, you’re given a master branch that points to the last commit you made. Every time you commit, the master branch pointer moves forward automatically. Creating a new branch creates a new pointer.
- **Push Command**: The push command updates your remote repository with your local changes.
- **Pull Request**: Pull requests let you tell others about changes you've pushed to a branch in a repository on GitHub. Once a pull request is opened, you can discuss and review the potential changes with collaborators and add follow-up commits before your changes are merged into the base branch.
