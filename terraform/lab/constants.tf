locals {
  machine_map = {
    machines = {
      m1 = {
        name                = "Ansible-Parent"
        target_node         = "proxmox" # Name of the Proxmox Server
        qemu_os             = "other" # Type of Operating System
        os_type             = "cloud-init" # Set to cloud-init to utilize templates
        agent               = 1           # Set to 1 to enable the QEMU Guest Agent. Note, you must run the qemu-guest-agent daemon in the guest for this to have any effect.
        full_clone          = true        # Set to true to create a full clone, or false to create a linked clone. See the docs about cloning for more info. Only applies when clone is set.
        template            = "ubuntu-jammy-cloudinit-template" # Name of Template Used to Clone
        cores               = 1
        socket              = 1
        memory              = 1048
        storage             = "25G" # Size of Secondary hard drive assiged as bootable
        ip_address          = "192.168.1.150"
        gateway             = "192.168.1.1"
        description         = "Ansible Parent"
        ssh_user            = "mike"
        mac_address         = "02:07:14:b4:37:24"
        disk_type           = "virtio"
        storage_dev         = "local-lvm"
        network_bridge_type = "vmbr0"
        network_model       = "virtio"
        cloud_init_pass     = ""
        automatic_reboot    = true
        network_firewall    = false #defaults to false
        dns_servers         = "192.168.1.1 8.8.8.8 192.168.1.1 127.0.0.1"
      }
    }
    m2 = {
        name                = "Ansible-Child-1"
        target_node         = "proxmox" # Name of the Proxmox Server
        qemu_os             = "other" # Type of Operating System
        os_type             = "cloud-init" # Set to cloud-init to utilize templates
        agent               = 1           # Set to 1 to enable the QEMU Guest Agent. Note, you must run the qemu-guest-agent daemon in the guest for this to have any effect.
        full_clone          = true        # Set to true to create a full clone, or false to create a linked clone. See the docs about cloning for more info. Only applies when clone is set.
        template            = "ubuntu-jammy-cloudinit-template" # Name of Template Used to Clone
        cores               = 1
        socket              = 1
        memory              = 1048
        storage             = "25G" # Size of Secondary hard drive assiged as bootable
        ip_address          = "192.168.1.151"
        gateway             = "192.168.1.1"
        description         = "Ansible Child 1"
        ssh_user            = "mike"
        mac_address         = "02:07:14:b4:37:24"
        disk_type           = "virtio"
        storage_dev         = "local-lvm"
        network_bridge_type = "vmbr0"
        network_model       = "virtio"
        cloud_init_pass     = ""
        automatic_reboot    = true
        network_firewall    = false #defaults to false
        dns_servers         = "192.168.1.1 8.8.8.8 192.168.1.1 127.0.0.1"
      }
      m3 = {
        name                = "Ansible-Child-2"
        target_node         = "proxmox" # Name of the Proxmox Server
        qemu_os             = "other" # Type of Operating System
        os_type             = "cloud-init" # Set to cloud-init to utilize templates
        agent               = 1           # Set to 1 to enable the QEMU Guest Agent. Note, you must run the qemu-guest-agent daemon in the guest for this to have any effect.
        full_clone          = true        # Set to true to create a full clone, or false to create a linked clone. See the docs about cloning for more info. Only applies when clone is set.
        template            = "ubuntu-jammy-cloudinit-template" # Name of Template Used to Clone
        cores               = 1
        socket              = 1
        memory              = 1048
        storage             = "25G" # Size of Secondary hard drive assiged as bootable
        ip_address          = "192.168.1.152"
        gateway             = "192.168.1.1"
        description         = "Ansible Child 2"
        ssh_user            = "mike"
        mac_address         = "02:07:14:b4:37:24"
        disk_type           = "virtio"
        storage_dev         = "local-lvm"
        network_bridge_type = "vmbr0"
        network_model       = "virtio"
        cloud_init_pass     = ""
        automatic_reboot    = true
        network_firewall    = false #defaults to false
        dns_servers         = "192.168.1.1 8.8.8.8 192.168.1.1 127.0.0.1"
      }
      
  }

  machines = lookup(local.machine_map, "machines", {})
}