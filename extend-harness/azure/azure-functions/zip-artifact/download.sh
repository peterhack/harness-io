export AWS_ACCESS_KEY_ID=${secrets.getValue("<SECRET>")}
export AWS_SECRET_ACCESS_KEY=${secrets.getValue("<SECRET>")}

mkdir -p /tmp/${service.name}

aws s3 cp s3://${artifact.metadata.bucketName}/${artifact.metadata.artifactPath} /tmp/${service.name}
