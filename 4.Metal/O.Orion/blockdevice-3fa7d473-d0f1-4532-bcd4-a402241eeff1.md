```yaml
kubectl apply --namespace openebs --filename - <<EOF 
 apiVersion: openebs.io/v1alpha1
 kind: BlockDevice
 metadata:
   name: blockdevice-0677cb25-01d4-4b7f-b318-77a98705173a
   labels:
     kubernetes.io/hostname: edmonton
     ndm.io/managed: "false"
     ndm.io/blockdevice-type: blockdevice
 status:
   claimState: Unclaimed
   state: Active
 spec:
   capacity:
     logicalSectorSize: 512
     storage: 107374182400
   details:
     deviceType: lvm
   devlinks:
   - kind: by-id
     links:
     - /dev/disk/by-id/dm-uuid-LVM-dPdubY8uizUlDSbo3zJuS27Q21kOdawto5U0xZkJvIE5pUuABDdgvXXjfNNbp9g5 
     - /dev/disk/by-id/dm-name-ubuntu--vg-iscsi--lv
   - kind: by-path
     links:
     - /dev/mapper/ubuntu--vg-iscsi--lv
   nodeAttributes:
     nodeName: edmonton
   path: /dev/dm-1
---
EOF
```
