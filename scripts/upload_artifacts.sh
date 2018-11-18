#!/bin/bash

source ~/.nvm/nvm.sh
export ARTIFACTS_HOME=`pwd`/artifacts

echo $CI_BUILD_ID > build.id

\cp -f lergo-ri/dist/*.tgz $ARTIFACTS_HOME
\cp -f lergo-ui/dist/*.tgz $ARTIFACTS_HOME
\cp -f build.id $ARTIFACTS_HOME
\cp -f lergo-ri/build/install.sh $ARTIFACTS_HOME

pushd lergo-ri
   nvm use
popd

pushd lergo-ri/build/vagrant/synced_folder/tasks
  npm install
  grunt s3:uploadArtifacts
  grunt s3:uploadArtifactsLatest
popd
