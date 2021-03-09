cd C:\Users\surabhy.mr\Desktop\Test
aws configure set AWS_ACCESS_KEY_ID AKIAR3OMUZAFQSODH5PC
aws configure set AWS_SECRET_ACCESS_KEY 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
aws configure set default.region ap-south-1
aws s3api create-bucket --bucket surabhy123 --region eu-west-1  --create-bucket-configuration LocationConstraint=eu-west-1
aws s3 website s3://surabhy123 --index-document index.html
aws s3api put-bucket-policy --bucket surabhy123 --policy file://policy.json
echo "<html><center><h1>Hello World</h1></center></html>" > index.html
aws s3 cp index.html s3://surabhy123




    
