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
	  #pkgs.obsidian enable after you can authenticate automagically with a hook
	  pkgs.mpop
	  pkgs.inetutils
	  pkgs.netcat-gnu 
	  pkgs.openssh
	  pkgs.gitFull #too big
	  pkgs.git
	  pkgs.gh
	  pkgs.openvpn
	  ];
	 env = {
	  secure_pizza= "Pineapple toppings";	  
	 };
	 shellHook = '' 
	   set -o vi
	   cowsay "Hello with $secure_pizza, please don't use git until you gh auth login, and make sure you are connected to a vpn."
	  '';
	}
	
