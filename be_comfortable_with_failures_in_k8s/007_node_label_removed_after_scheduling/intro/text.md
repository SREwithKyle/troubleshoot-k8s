# Introduction

In this scenario, you will explore how removing a node label affects pod scheduling.

## What You'll Learn:
- How `nodeSelector` influences pod scheduling.
- What happens when a node label used in `nodeSelector` is removed.
- How to troubleshoot pod scheduling issues caused by missing labels.

A pod is defined in `pod.yaml` with a `nodeSelector` that requires a node with the label `env=testing`. You will label a node, apply the pod, remove the label, and observe the impact.
