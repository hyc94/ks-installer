kubectl apply -f kubesphere-devops-system-namespace.yaml

kubectl apply -f helm-manifest-uc.yaml --namespace kubesphere-devops-system

kubectl apply -f jenkins-agent-config.yaml --namespace kubesphere-devops-system

kubectl apply -f jenkins-casc-config.yml --namespace kubesphere-devops-system

kubectl apply -f helm-manifest-ks-jenkins.yaml --namespace kubesphere-devops-system

kubectl create secret generic mysql-pass --from-file=password.txt --namespace kubesphere-system

kubectl apply -f mysql.yaml --namespace kubesphere-system

kubectl apply -f devops-db-ctrl-job.yaml --namespace kubesphere-devops-system

kubectl apply -f db-init-job.yaml --namespace kubesphere-devops-system