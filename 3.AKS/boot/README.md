# AKS


- [ ] [AKS Service Principal](https://docs.microsoft.com/en-us/azure/aks/kubernetes-service-principal?tabs=azure-cli)

`AZURE_CLI_SP=azure-cli-`:id:

```
az ad sp create-for-rbac --name ${AZURE_CLI_SP} > ~/.ssh/terraform.tfvars.json
```
> Return
```
WARNING: The output includes credentials that you must protect. Be sure that you do not include these credentials in your code or check the credentials into your source control. For more information, see https://aka.ms/azadsp-cli
```

```
cat ~/.ssh/terraform.tfvars.json
```
> Return
```
{
  "appId": "aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa",
  "displayName": "azure-cli-300000000",
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

```
for id in $(az ad sp list --display-name ${AZURE_CLI_SP} | jq '.[].appId' --raw-output); do az ad sp delete --id ${id}; done
```

# References

- [ ] [Provision an AKS Cluster (Azure)](https://learn.hashicorp.com/tutorials/terraform/aks)
- [ ] [Bitnami Application Catalog](https://bitnami.com/stacks)

### Learn Terraform - Provision AKS Cluster

This repo is a companion repo to the [Provision an AKS Cluster learn guide](https://learn.hashicorp.com/terraform/kubernetes/provision-aks-cluster), containing Terraform configuration files to provision an AKS cluster on Azure.
