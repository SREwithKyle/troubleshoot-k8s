#!/bin/bash
kubectl get pods | grep crashloopbackoff | grep -q Running