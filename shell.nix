let
	pkgs = import <nixpkgs> {};
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
	  ];
	 env = {
	  secure_pizza= "Pineapple toppings";	  
	  GCM_CREDENTIAL_STORE="cache";
	  GCM_CREDENTIAL_CACHE_OPTIONS="--timeout 300";
	 };
	 shellHook = '' 
	   cowsay \"Hello with $secure_pizza\"
	  '';
	}
	
