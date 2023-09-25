let
    pkgs = import (builtins.fetchTarball {
        url ="https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz";
    }) {};
in
	pkgs.mkShell{
	 packages = [
	  pkgs.cowsay
	  pkgs.nmap
	  pkgs.gobuster
	  pkgs.obsidian
	  pkgs.mpop
	  pkgs.inetutils
	  pkgs.netcat-gnu 
	  pkgs.openssh
	  pkgs.gitFull
	  #pkgs.git-credential-manager
	  #pkgs.dotnet-runtime_8
	  pkgs.gh
	  ];
	 env = {
	  secure_pizza= "Pineapple toppings";	  
	 };
	 shellHook = '' 
	   set -o vi
	   cowsay \"Hello with $secure_pizza\"
	  '';
	   #git config --global credential.credentialStore cache
	   #git config --global credential.cacheOptions "--timeout 300"
	}
	
