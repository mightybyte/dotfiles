{ pkgs }: {

packageOverrides = super: let self = super.pkgs; in with self; rec {

myHaskellPackages = libProf: self: super:
  with pkgs.haskell.lib; let pkg = self.callPackage; in rec {

  ## Personal packages

  beam              = pkg ~/dotfiles/beam.nix {};

  mkDerivation = pkg: super.mkDerivation (pkg // {
    # src = pkgs.fetchurl {
    #   url = "file:///Volumes/Hackage/package/${pkg.pname}-${pkg.version}.tar.gz";
    #   inherit (pkg) sha256;
    # };
    enableLibraryProfiling = libProf;
    enableExecutableProfiling = false;
  });
};

haskPkgs = haskell802Packages;
haskellPackages = haskPkgs;

haskell802Packages = super.haskell.packages.ghc802.override {
  overrides = myHaskellPackages false;
};
profiledHaskell802Packages = super.haskell.packages.ghc802.override {
  overrides = myHaskellPackages true;
};

};

allowUnfree = true;
allowBroken = true;

}
