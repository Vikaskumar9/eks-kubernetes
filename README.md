# eks-kubernetes
```
## setup instructions
0. download conda from anaconda for mac|linux
1. make sure that boto, aws-cli and ansible is installed => `pip install aws-cli ansible boto3`
2. cd in the eks-playbook
3. and run -> `AWS_PROFILE="your_profile_name" ansible-playbook playbook-eks.yml -i hosts.ini -vvvv;`

#setup kubectl connection

1. run `aws sts get-caller-identity` to make sure your IAM profile has the right access to the kubernetes

2. if step 1. returns no error then run `aws eks --region region update-kubeconfig --name EKS-Cluster --profile your_profile_name` to config kubectl

3. run `kubectl get svc` to confirm the cluster access 
```
