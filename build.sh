#!/bin/bash
# Build script
# Make sure the first line of your Dockerfile start with (without the quotes "# BUILD: "

BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

for definition in $( ls -d -1 */ )
do
    definition="${definition::${#definition}-1}"
    dockerDir="${BASE_DIR}/${definition}"
    printf "Working on ${definition} ... "

    dockerFile="${dockerDir}/Dockerfile"
    if [[ ! -r "${dockerFile}" ]]; then
        printf "SKIP (Dockerfile does not exist/readable).\n"
        continue
    fi

    dockerFileHeader="$( head -1 "${dockerFile}" )"
    if [[ ! $dockerFileHeader == "# BUILD:"* ]]; then
        printf "SKIP (No BUILD header).\n"
        continue
    fi

    imageTag=$( echo "${dockerFileHeader:8}" | awk '{$1=$1};1' )
    imageTagLatest="${imageTag%:*}:latest"
    printf "Checking ... "

    runResult=$( docker pull "${imageTag}" 2>&1)
    if [ $? -eq 0 ]; then
        printf "SKIP (Tag exists upstream).\n"
        continue
    fi

    printf "Building ... "
    runResult=$( docker build -t "${imageTag}" -t "${imageTagLatest}" "${dockerDir}" 2>&1)
    if [ $? -ne 0 ]; then
        printf "FAILED (Cannot build).\n"
        echo $runResult
        exit 1
    fi

    printf "Pushing ... "
    runResult=$( docker push "${imageTag}" 2>&1)
    if [ $? -ne 0 ]; then
        echo "FAILED (Cannot push ${imageTag}).\n"
        echo $runResult
        exit 1
    fi
    runResult=$( docker push "${imageTagLatest}" 2>&1)
    if [ $? -ne 0 ]; then
        echo "FAILED (Cannot push ${imageTagLatest}).\n"
        echo $runResult
        exit 1
    fi

    printf "DONE.\n"
done

exit 0
