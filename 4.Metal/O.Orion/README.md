# :a: Grappe Orion

| Type Server   | Hostname                     |  IP               | Specs                 |
|---------------|------------------------------|-------------------|-----------------------|
| control plane | betelgeuse.orion.gasy.africa | `10.13.15.200/20` | 64GB Ram,      16cpus |
| data plane    | bellatrix.orion.gasy.africa  | `10.13.15.201/20` | 64GB Ram,      16cpus |
| data plane    | rigel.orion.gasy.africa      | `10.13.15.202/20` | 32GB Ram,      16cpus |
| data plane    | saiph.orion.gasy.africa      | `10.13.15.203/20` | 64GB Ram,      16cpus |



:one: kubectl apply [csi-cstor-sc](csi-cstor-sc.md)

[:x:]() Error
```
Error from server (InternalError): error when creating "STDIN": Internal error occurred: failed calling webhook "admission-webhook.cstor.openebs.io": Post https://openebs-cstor-admission-server.openebs.svc:443/validate?timeout=5s: dial tcp 10.102.15.93:443: connect: no route to host
```
