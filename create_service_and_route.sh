#!/bin/bash

oc create -f quarkus-pipeline/src/main/kubernetes/Service.yml
oc expose service/tdc-app -n demo
