#!/bin/bash

ytt -f values.yaml -f overlay.yaml -f tkg-cluster-01-BASE.yaml > tkg-cluster-01-YTT.yaml
