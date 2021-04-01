# Create an IAM user

aws iam create-user --user-name Chase

# Create an IAM group

aws iam create-group --group-name Cloudskills

# Add user to group

aws iam add-user-to-group --user-name Chase --group-name Cloudskills