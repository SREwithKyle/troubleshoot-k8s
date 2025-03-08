# Introduction

In this scenario, you will troubleshoot a Kubernetes pod that fails to schedule due to node affinity constraints combined with a cordoned node.

## What You'll Learn:

- How `nodeAffinity` influences pod scheduling.
- The impact of cordoning a node on pod placement.
- How to troubleshoot and fix issues related to cordoned nodes.

A pod is defined in `pod.yaml` with `nodeAffinity` requiring the node to have the label `env=restricted`. However, after labeling the node, it is cordoned, preventing scheduling. Your goal is to identify the problem and fix it so the pod can be scheduled successfully.
