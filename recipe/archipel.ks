%include archipel-install.ks

%packages --excludedocs --nobase
%include archipel-pkgs.ks
%end

%post
echo "[ARCHIPEL] Reactivating the root account"
passwd -uf root
%end