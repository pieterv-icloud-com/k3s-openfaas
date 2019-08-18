#! /bin/sh
server=https://kubernetes.default:443

ca=$(base64 -w 0 < /var/run/secrets/kubernetes.io/serviceaccount/ca.crt)
token=$(cat /var/run/secrets/kubernetes.io/serviceaccount/token)
namespace=$(cat /var/run/secrets/kubernetes.io/serviceaccount/namespace)

mkdir -p /root/.kube

echo "
apiVersion: v1
kind: Config
clusters:
- name: default-cluster
  cluster:
    certificate-authority-data: ${ca}
    server: ${server}
contexts:
- name: default-context
  context:
    cluster: default-cluster
    namespace: ${namespace}
    user: default-user
current-context: default-context
users:
- name: default-user
  user:
    token: ${token}
" > /root/.kube/config
octant