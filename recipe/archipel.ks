%include archipel-install.ks

%packages --excludedocs --nobase
%include archipel-pkgs.ks
%end

%post
%include archipel-post.ks
%end