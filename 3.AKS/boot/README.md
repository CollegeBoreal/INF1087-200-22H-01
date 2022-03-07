# AKS


```
az ad sp create-for-rbac > ~/.ssh/terraform.tfvars.json
```
> Return
```
{
  "appId": "aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa",
  "displayName": "azure-cli-2019-04-11-00-46-05",
  "name": "http://azure-cli-2019-04-11-00-46-05",
  "password": "aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa",
  "tenant": "aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa"
}
```

```
terraform init
```

```
terraform plan -var-file=~/.ssh/terraform.tfvars.json
```


```
az aks get-credentials \ 
   --resource-group $(terraform output -raw resource_group_name) \
   --name $(terraform output -raw kubernetes_cluster_name)
```
> Return
```
Merged "AKS-CB-AZ-30000000-aks" as current context in /Users/myuser/.kube/config
```


```
helm repo add azure-marketplace https://marketplace.azurecr.io/helm/v1/repo
```

- [ ] [mediawiki](https://bitnami.com/stack/mediawiki)

```
helm install my-release azure-marketplace/mediawiki
```

## :x: Destroy

```
 terraform destroy -var-file=~/.ssh/terraform.tfvars.json
```


# References

- [ ] [Provision an AKS Cluster (Azure)](https://learn.hashicorp.com/tutorials/terraform/aks)
- [ ] [Bitnami Application Catalog](https://bitnami.com/stacks)

### Learn Terraform - Provision AKS Cluster

This repo is a companion repo to the [Provision an AKS Cluster learn guide](https://learn.hashicorp.com/terraform/kubernetes/provision-aks-cluster), containing Terraform configuration files to provision an AKS cluster on Azure.