#!/bin/bash -l

APP_NAME=$1
PLACEMENT_ZONE=$2
ORG_NAME=$3
SPACE_NAME=$4
APP_INSTANCES=$5

case ${PLACEMENT_ZONE} in

  IPZ001)
    STATEMENTS
    ;;

  EPZ001)
    STATEMENTS
    ;;

  IPZ002)
    STATEMENTS
    ;;

  EPZ002)
    STATEMENTS
    ;;

  *)
    echo "unknown placement zone: ${PLACEMENT_ZONE}"
    exit 1
    ;;
esac

echo "login to BPC Cloud Foundry"
echo "placement-zone: ${PLACEMENT_ZONE} organization: ${ORGANIZATION_NAME} space: ${SPACE_NAME}"

echo "cf push ${APP_NAME} -i ${APP_INSTANCES} "

time=$(date)
# echo "time=$time" >> $GITHUB_OUTPUT
