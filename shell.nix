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
	  #pkgs.gitFull #too big
	  pkgs.git
	  pkgs.gh
	  pkgs.openvpn
	  pkgs.metasploit
	  ];
	 env = {
	  example= "example";	  
	 };
	 shellHook = '' 
	   set -o vi
	   cowsay "Cloning SecLists... please wait this might take awhile"
	   git clone --depth 1 https://github.com/danielmiessler/SecLists.git
	   cowsay "Hello , please don't use git until you gh auth login, and make sure you are connected to a vpn."
	  '';
	}
	
