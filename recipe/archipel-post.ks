echo "[ARCHIPEL] Reactivating the root account"
passwd -uf root

echo "[ARCHIPEL] Creating the /vm folder"
mkdir -p /vm

echo "[ARCHIPEL] Updating the archipel config file to be in stateless mode"
cat > /etc/archipel/archipel.conf <<EOF
[GLOBAL]
stateless_node = True
EOF

echo "[ARCHIPEL] Disabling the firstboot system"
sed "/^    standalone=1/d" /etc/init.d/ovirt-early -i

echo "[ARCHIPEL] Reconfiguring libvirt"
sed "/# by vdsm/d" /etc/libvirt/libvirtd.conf  -i

