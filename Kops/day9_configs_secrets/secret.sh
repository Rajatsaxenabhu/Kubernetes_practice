# when we pull the images from the private repositry, we can use the secrets using the regsitry

# kubectl create secret docker-registry docker-psd \
# --docker-server=docker.io --docker-username=saxenarajat499 \
# --docker-password=dckr_pat_4P9BiLeDvBsBn_tlIbu2RK8ecPM \
# --docker-email=H8n0M@example.com


---
generic way

    another ways the to convert the passwrod in base 64
    echo -n asdfasdfasdfasdasdasdasdasdasd | base64

    and gave this value to envt of the deployments file

---
file mount ways