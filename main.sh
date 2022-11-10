#!/usr/bin/env bash

echo 
echo "##############################"
echo "###   SERVICE INSPECTION   ###"
echo "##############################"
echo



set -e
 
export SDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

#export SDIR="/ansible/service_inspection"

source ${SDIR}/common/utils.shlib
source ${SDIR}/service-inspection.shlib



conditionals ${@}


export END_TS=$(date +%s)
export TIME_TAKEN="$(( ($END_TS - $START_TS)  ))"

echo 
echo "######################################################"
echo "####           FINISHED SUCCESSFULLY               ###"
echo "######################################################"
echo "          time taken = $TIME_TAKEN sec"
echo 


exit 0

