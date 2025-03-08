# Introduction

In this scenario, you will troubleshoot a Kubernetes pod that fails to schedule due to an issue with `nodeSelector`.

## What You'll Learn:
- How `nodeSelector` influences pod scheduling.
- How to debug pod scheduling issues.
- How to modify `nodeSelector` to allow successful scheduling.

A pod is defined in `pod.yaml` with a `nodeSelector` that references a non-existent label. Your goal is to identify the problem and fix it so the pod can be scheduled successfully.
