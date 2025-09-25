# 🐳 TWS Kind Cluster

[![Kubernetes](https://img.shields.io/badge/Kubernetes-v1.30-blue)](https://kubernetes.io/)  
[![Kind](https://img.shields.io/badge/Kind-v0.25.0-blueviolet)](https://kind.sigs.k8s.io/)  
[![Docker](https://img.shields.io/badge/Docker-24.0.5-blue)](https://www.docker.com/)

---

## 📑 Table of Contents
- [Overview](#-overview)
- [Prerequisites](#-prerequisites)
- [Cluster Configuration](#️-cluster-configuration)
- [Create the Cluster](#-create-the-cluster)
- [Verify the Cluster](#-verify-the-cluster)
- [Accessing the Cluster](#-accessing-the-cluster)
- [Delete the Cluster](#-delete-the-cluster)
- [Notes](#-notes)

---

## 📌 Overview
This repository shows how to **create and manage a local Kubernetes cluster** using  
**Kind (Kubernetes in Docker)** for development and testing.

➡️ Cluster Name: `tws-kind-cluster`

---

## 🛠 Prerequisites
Install the following tools before proceeding:

- 🐳 [Docker](https://docs.docker.com/get-docker/)  
- ☸️ [kubectl](https://kubernetes.io/docs/tasks/tools/)  
- 📦 [Kind](https://kind.sigs.k8s.io/docs/user/quick-start/)

Check versions:
```bash
docker --version
kubectl version --client
kind --version
