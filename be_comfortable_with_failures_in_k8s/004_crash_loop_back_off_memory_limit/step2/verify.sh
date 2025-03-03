#!/bin/bash
kubectl get pods | grep low-memory | grep -q Running