# Introduction

In this scenario, you will learn how **preferred node affinity** influences pod scheduling in Kubernetes.

## What You'll Learn:
- How **preferred** `nodeAffinity` works compared to **required** affinity.
- How to verify which node a pod is scheduled on.
- How to influence pod placement without strict scheduling constraints.

A pod is defined in `pod.yaml` with **preferred node affinity**, meaning Kubernetes will try to place the pod on a node labeled `slow-node=true` if available, but it is not mandatory.
