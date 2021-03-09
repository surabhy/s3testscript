cd <copy the path where policy.json file placed in your computer>
aws configure set AWS_ACCESS_KEY_ID <Your Access Key ID>
aws configure set AWS_SECRET_ACCESS_KEY <your AWS Secret Access Key>
aws configure set default.region ap-south-1
aws s3api create-bucket --bucket <Bucket Name> --region eu-west-1  --create-bucket-configuration LocationConstraint=eu-west-1
aws s3 website s3://<Bucket Name> --index-document index.html
aws s3api put-bucket-policy --bucket <bucket Name> --policy file://policy.json
echo "<html><center><h1>Hello World</h1></center></html>" > index.html
aws s3 cp index.html s3://<Bucket Name>




    
