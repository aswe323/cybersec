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
	  pkgs.git-credential-manager
	  pkgs.dotnet-sdk_8
	  ];
	 env = {
	  secure_pizza= "Pineapple toppings";	  
	  GCM_CREDENTIAL_STORE="cache";
	  GCM_CREDENTIAL_CACHE_OPTIONS="--timeout 300";
	 };
	 shellHook = '' 
	   set -o vi
	   cowsay \"Hello with $secure_pizza\"
	  '';
	}
	
