# Introduction

In this scenario, you will troubleshoot a **complex scheduling failure** involving **nodeSelector, nodeAffinity, and NoExecute tolerations**.

## What You'll Learn:
- How **nodeSelector** and **nodeAffinity** affect scheduling.
- The impact of **NoSchedule taints** on pod placement.
- How to troubleshoot and fix scheduling failures.

The environment is pre-configured with:
- A **labelled** node (`app=critical, zone=us-east-1a`).
- A **NoSchedule taint** (`restricted=true:NoSchedule`).

Your goal is to **identify and fix the issue** so the pod can be scheduled successfully.
