# gaia-db
To access gaia-db from a local system use *mysql workbench*


# Connecting to DB

## From Workstation

- Download mysql workbench
- Generate a token by executing the folloing line
aws rds generate-db-auth-token --hostname rdsmysql.cdgmuqiadpid.us-west-2.rds.amazonaws.com --port 3306 --region us-west-2 --username sorengoy
#Setting up Access to DB via IAM
https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html
