# Security in Azure and AWS

In this lab, we'll learn how to create users and groups, and how to define roles in AWS.

## The Project

- To create a user in AWS using the CLI, we run the following command from our terminal: `aws iam create-user --user-name username`.
- To create a group, we run the following command: `aws iam create-group --group-name groupname`.
- To add a user to a group, this is the command: `aws iam add-user-to-group --user-name username --group-name groupname`.
