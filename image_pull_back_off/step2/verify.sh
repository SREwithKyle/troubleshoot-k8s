#!/bin/bash
kubectl get pods | grep nginx_pod | grep -q Running