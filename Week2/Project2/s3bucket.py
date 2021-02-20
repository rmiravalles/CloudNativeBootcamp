import sys
import boto3

try:  # in case an error occurs
    def main():
        create_s3bucket(bucket_name)

except Exception as e:
    print(e)

def create_s3bucket(bucket_name):
    s3_bucket = boto3.client(
        's3',
        #region-name='us-east-1'
    )

    bucket = s3_bucket.create_bucket(
        Bucket=bucket_name,
        ACL='private',  # ACL stands for Access Control List
    )

    print(bucket)  # this will print the output of creating the S3 bucket

BUCKET_NAME = sys.argv[1]  # argv allows us to pass an argument at runtime

if __name__ == '__main__':
    main()
   