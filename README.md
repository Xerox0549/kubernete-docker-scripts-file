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
## 🚀 Usage (Quick Start)
Firstly we need to run these commad for installation of kind 
 1. Give a permission to file for read write 
```
chmod +x install-kind.sh
```
 2. Run the commad for exicute the file 
 ```
 ./install-kind.sh 
```
 3. After exicute run the command for docker usermod set up and new grp creation
 ```
 sudo usermod -aG docker $USER & newgrp docker
 ```

Run the following commands step by step:

```bash
# 1. Create the cluster
kind create cluster --config kind-config.yaml --name tws-kind-cluster

# 2. Verify the nodes
kubectl get nodes

# 3. Check cluster info
kubectl cluster-info


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
