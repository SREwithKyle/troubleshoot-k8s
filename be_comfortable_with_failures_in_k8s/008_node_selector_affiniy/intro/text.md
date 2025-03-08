# Introduction

In this scenario, you will troubleshoot a Kubernetes pod that fails to schedule due to an issue with node affinity rules.

## What You'll Learn:
- How node affinity affects pod scheduling.
- How to debug pod scheduling issues.
- How to modify node affinity to allow scheduling.

A pod is defined in `pod.yaml` with a node affinity rule that references a non-existent label. Your goal is to identify the problem and fix it so the pod can be scheduled successfully.