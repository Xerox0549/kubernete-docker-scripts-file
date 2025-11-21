#!/bin/bash

set -e

echo "🔄 Updating system..."
sudo apt update -y

echo "📦 Installing dependencies..."
sudo apt install -y curl wget apt-transport-https ca-certificates conntrack

echo "🐳 Installing Docker..."
sudo apt install -y docker.io
sudo systemctl enable docker --now

echo "➕ Adding user to docker group..."
sudo usermod -aG docker $USER 

echo "📥 Downloading Minikube..."
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

echo "📌 Installing Minikube..."
sudo install minikube-linux-amd64 /usr/local/bin/minikube
rm minikube-linux-amd64

echo "⚙️ Installing Kubectl..."
sudo snap install kubectl --classic

echo "🚀 Starting Minikube cluster..."
minikube start --driver=docker

echo "🔍 Checking cluster status..."
minikube status
kubectl get nodes

echo "🎉 Installation Completed Successfully!"
echo "➡ You may need to logout/login for Docker permissions to apply"
