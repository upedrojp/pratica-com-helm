#!/bin/bash

cd guestbook

helm repo add bitnami https://charts.bitnami.com/bitnami
helm dependencies update
helm upgrade guestbook ./ --install --values values.yaml
helm upgrade redis ./ --install --values values.yaml

