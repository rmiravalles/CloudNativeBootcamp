# GitHub and Source Control

## Source control best practices

- **DON'T** commit passwords and secrets.
- Write good commit messages.
- Follow branching best practices.
- **Commit often**.
- Test before you commit :exclamation: :exclamation:

## Distributed Source Control

- Every developer clones a copy of a repository and has the full history of the project.

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