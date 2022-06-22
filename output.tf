#output "instance_name_and_ip" {
#  value = proxmox_vm_qemu.vm-server.*.default_ipv4_address
#}

#output "instance_name" {
#  value = proxmox_vm_qemu.test_server.*.name
#}

# check some examples
# https://www.bogotobogo.com/DevOps/Terraform/Terraform-Introduction-AWS-loops.php
# and
# https://stackoverflow.com/questions/64080219/terraform-output-object-with-multiple-attributes-for-each-of-for-resources

output "instance_name_and_ip" {
  value = {
    for instance in proxmox_vm_qemu.vm-server:
      instance.name => instance.default_ipv4_address
  }
}

