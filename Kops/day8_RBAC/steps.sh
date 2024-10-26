# copy keys for cluster creation
# .ssh/ && private key too

---
Create ns develop and prod
---

---
copy keys from master to management server as - ca.crt - ca.key
    
    > open in controller node then fo to /etc/kubernetes/kops-controller the copy the kubernetes ca.crt and kubernetes ca.key
---

---create User 1: userd   => for developments

openssl genrsa -out userd.key 2048 
openssl req -new -key userd.key -out userd.csr -subj "/CN=userd/O=developments"
openssl x509 -req -in userd.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out userd.crt -days 365


---create User 2: userp   => for production
openssl genrsa -out userp.key 2048
openssl req -new -key userp.key -out userp.csr -subj "/CN=userp/O=production"
openssl x509 -req -in userp.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out userp.crt -days 365

---
# now the has pasted from management server to master nodes

---
# now get the configs file

nano USERD-CONFIG
export KUBECONFIG=/USERD-CONFIG

---
create the role for both and config
## role-config.yml file


---
Binding the file
## binding-config.yml