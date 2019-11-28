#!/bin/bash

tkn pipeline start tdc-build-deploy \
 --param="mavenMirrorUrl=http://nexus3-kogito-tools.apps.kogito.automation.rhmw.io/repository/maven-public/"  \
 --param="kubernetesResourceFile=/workspace/source/quarkus-pipeline/src/main/kubernetes/Deployment.yml" \
 --resource="appSource=bgc-git-source" \
 --resource="appImage=bgc-image-blue" \
 --serviceaccount="pipeline"


