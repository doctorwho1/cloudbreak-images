docker run -i --rm \
    -v $PWD:/work \
    -w /work \
    -e TRACE=$TRACE \
    -e ARM_CLIENT_ID=$ARM_CLIENT_ID \
    -e ARM_CLIENT_SECRET=$ARM_CLIENT_SECRET \
    -e ARM_GROUP_NAME=$ARM_GROUP_NAME \
    -e ARM_STORAGE_ACCOUNT=$ARM_STORAGE_ACCOUNT \
    -e ARM_SUBSCRIPTION_ID=$ARM_SUBSCRIPTION_ID \
    -e ARM_TENANT_ID=$ARM_TENANT_ID \
    -e ARM_DESTINATION_IMAGE_PREFIX=$ARM_DESTINATION_IMAGE_PREFIX \
    -e ARM_USERNAME=$ARM_USERNAME \
    -e ARM_PASSWORD=$ARM_PASSWORD \
    --entrypoint azure-copy \
    hortonworks/cloudbreak-azure-cli-tools:1.10.1

docker run -i --rm \
    -v $PWD:/work \
    -w /work \
    --entrypoint ./pollprogress \
    hortonworks/cloudbreak-azure-cli-tools:1.10.1 \
    checks.yml