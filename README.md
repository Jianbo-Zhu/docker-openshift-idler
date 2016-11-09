# OpenShift Idler

Periodically idles endpoints [AusNimbus](https://www.ausnimbus.com.au/)

Every 12 hours, namespaces that have label idle=true will automatically scale down.

## Installation

`docker pull ausnimbus/openshift-idler:latest`

Or build this image:

```
git clone https://github.com/ausnimbus/docker-openshift-idler.git
cd docker-openshift-idler
docker build -t openshift-idler:latest .
```

The ENV Variable `DELAY` defaults to 8 hours between runs

## Create Service Account

```
oc create serviceaccount openshift-idler

oc adm policy add-cluster-role-to-user edit system:serviceaccount:ausnimbus-infra:openshift-idler
oc adm policy add-cluster-role-to-user view system:serviceaccount:ausnimbus-infra:openshift-idler

oc create -f openshift-idler.yaml
```
