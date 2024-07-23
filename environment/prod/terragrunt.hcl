terraform {
  source = "git::https://github.com/soma-bharath/Jenkins-ec2-modules.git//modules/jenkins_ec2"
}

inputs = {
  instancetype="t2.large"
  instance_name= "Jenkins-prodgov-jen-001"
  key_name = "spaces-prod-developer-admin-key"
  region="us-gov-west-1"
  amiid="ami-04fd4a41214d8887d"
  security_group_name_ec2="Spaces-Prod-jenkins-ec2-sg"
  Jenkins_server_name="spaces-prod-jenkins-server"
  vpc_id = "spaces-prod-app-1"
  alb_name = "Spaces-Jenkins-lb"
  kms_key_id = "arn:aws-us-gov:kms:us-gov-west-1:100279183492:key/a956a942-c1f4-4e1a-9b90-a7b03974dc44"
}
