#!/bin/bash
kubectl get pods | grep liveness-fail | grep -q Running