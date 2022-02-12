# Terraform Azure RM

# References

https://github.com/hashicorp/terraform-provider-azurerm

- [ ] Portail Azure

https://portal.azure.com/

[Resssource Blade Machines Virtuelles](https://portal.azure.com/#blade/HubsExtension/BrowseResourceBlade/Microsoft.Compute/VirtualMachines)

- [ ] image list [VM 2nd Generation](https://docs.microsoft.com/en-us/azure/virtual-machines/generation-2)

```
az vm image list --publisher Canonical --sku gen2 --output table --all
```
>
```
Offer                                         Publisher    Sku                           Urn                                                                                          Version
--------------------------------------------  -----------  ----------------------------  -------------------------------------------------------------------------------------------  ---------------
0001-com-ubuntu-confidential-vm-experimental  Canonical    18_04-gen2                    Canonical:0001-com-ubuntu-confidential-vm-experimental:18_04-gen2:18.04.20210309             18.04.20210309
0001-com-ubuntu-confidential-vm-experimental  Canonical    20_04-gen2                    Canonical:0001-com-ubuntu-confidential-vm-experimental:20_04-gen2:20.04.20210309             20.04.20210309
0001-com-ubuntu-confidential-vm-focal         Canonical    20_04-lts-gen2                Canonical:0001-com-ubuntu-confidential-vm-focal:20_04-lts-gen2:20.04.202107090               20.04.202107090
0001-com-ubuntu-confidential-vm-focal         Canonical    20_04-lts-gen2                Canonical:0001-com-ubuntu-confidential-vm-focal:20_04-lts-gen2:20.04.202107200               20.04.202107200
0001-com-ubuntu-confidential-vm-focal         Canonical    20_04-lts-gen2                Canonical:0001-com-ubuntu-confidential-vm-focal:20_04-lts-gen2:20.04.202109080               20.04.202109080
0001-com-ubuntu-confidential-vm-focal         Canonical    20_04-lts-gen2                Canonical:0001-com-ubuntu-confidential-vm-focal:20_04-lts-gen2:20.04.202110290               20.04.202110290
```
