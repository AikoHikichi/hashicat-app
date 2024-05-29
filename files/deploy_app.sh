#!/bin/bash
# Copyright (c) HashiCorp, Inc.

# Script to deploy a very simple web application.
# The web app has a customizable image and some text.

cat << EOM > /var/www/html/index.html
<html>
  <head><title>Meow!</title></head>
  <body>
  <div style="width:800px;margin: 0 auto">

  <!-- BEGIN -->
  <center><img src="http://${PLACEHOLDER}/${WIDTH}/${HEIGHT}"></img></center>
  <center><h2>Meow World!</h2></center>
  Welcome to ${PREFIX}'s module "s3-bucket" {
  source              = "cloudposse/s3-bucket/aws"
  version             = "3.1.0"
  s3_object_ownership = "BucketOwnerEnforced"
}cd /root/hcp-terraform

# 1. VCSからポリシーセットを作成
# 2. 自動化されたPolicy as Codeを有効化
# 3. hashicat-awsのワークスペースに適用
terraform apply -auto-approve
app. Replace this text with your own.
  <!-- END -->

  </div>
  </body>
</html>
EOM

echo "Script complete."
