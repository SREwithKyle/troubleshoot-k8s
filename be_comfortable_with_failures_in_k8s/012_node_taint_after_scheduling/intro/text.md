# Introduction

In this scenario, you will explore what happens when a **NoExecute taint** is applied to a node **after** a pod has already been scheduled there.

## What You'll Learn:
- How **NoExecute taints** impact running pods.
- Whether a pod is evicted after a taint is added.
- How to tolerate a **NoExecute** taint to prevent eviction.

A pod is deployed with a **nodeSelector** targeting `node01`, and you will add a **NoExecute** taint to observe whether the pod is removed from the node.
