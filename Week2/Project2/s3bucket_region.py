# kindly supplied by Robert Stojan from the group
import sys
import boto3

try:
    def main():
        create_s3bucket(bucket_name, region=None)

except Exception as e:
    print(e)

def create_s3bucket(bucket_name, region=None):
    """Create an S3 bucket in a specified region
​
    If a region is not specified, the bucket is created in the S3 default
    region (us-east-1).
​
    :param bucket_name: Bucket to create
    :param region: String region to create bucket in, e.g., 'us-west-2'
    :print: Prints the bucket name that was created
    """

    # Sets the region if passed as the second argument
    region = sys.argv[2]

    # If a region isn't specified, use us-east-1 (Virginia)
    if region is None:
        s3_bucket=boto3.client(
            's3',
        )
        bucket = s3_bucket.create_bucket(
            Bucket=bucket_name,
            ACL='private',
        )​

    # If a region is specified, pass that in to the client and CreateBucketConfiguration
    else:
        s3_bucket=boto3.client(
            's3',
            region_name=region
        )
​
        # Formatting the LocationConstraint key-value pair the API is expecting for CreateBucketConfiguration
        location = {'LocationConstraint': region}
​
        bucket = s3_bucket.create_bucket(
        Bucket=bucket_name,
        ACL='private',
        CreateBucketConfiguration=location
    )
​
    print(bucket)
​
bucket_name = sys.argv[1]
​
if __name__ == '__main__':
    main()
