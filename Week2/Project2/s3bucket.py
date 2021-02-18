import sys
import boto3

try:
    def main():
        create_s3bucket(bucket_name)

except Exception as e:
    print(e)

def create_s3bucket(BUCKET_NAME):
    s3_bucket = boto3.client(
        's3',
    )

    bucket = s3_bucket.create_bucket(
        Bucket=BUCKET_NAME,
        ACL='private',
    )

    print(bucket)

BUCKET_NAME = sys.argv[1]

if __name__ == '__main__':
   main()
