#!/bin/bash -l

APP_NAME=$1
PLACEMENT_ZONE=$2
ORG_NAME=$3
SPACE_NAME=$4
APP_INSTANCES=$5

case ${PLACEMENT_ZONE} in

  IPZ001)
    url="https://cf.ipz001.api.io"
    ;;

  EPZ001)
    url="https://cf.epz001.api.io"
    ;;

  IPZ002)
    url="https://cf.ipz002.api.io"
    ;;

  EPZ002)
    url="https://cf.epz002.api.io"
    ;;

  *)
    echo "unknown placement zone: ${PLACEMENT_ZONE}"
    exit 1
    ;;
esac

echo "login to BPC Cloud Foundry"
echo "placement-zone: ${PLACEMENT_ZONE} organization: ${ORGANIZATION_NAME} space: ${SPACE_NAME}"
echo "cf login -a $url -u username -p ***** -o ${ORGANIZATION_NAME} -s ${SPACE_NAME}"
echo "cf push ${APP_NAME} -i ${APP_INSTANCES} "

time=$(date)
# echo "time=$time" >> $GITHUB_OUTPUT
