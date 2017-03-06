{ mkDerivation, fetchgit, base, conduit, containers, convertible, HDBC
, HDBC-sqlite3, microlens, mtl, pretty, semigroups, stdenv, tagged
, text, time, uniplate
}:
mkDerivation {
  pname = "beam";
  version = "0.3.2.0";
  src = fetchgit {
    url = "git://github.com/tathougies/beam";
    rev = "1b66f1475be0623563eeb32df570037c58f8e1bd";
    sha256 = "18rafyvg5blz0z6njsb6l0sn2g0x106mwl21b33fb2dj3rp2lz4s";
  };
  libraryHaskellDepends = [
    base conduit containers convertible HDBC HDBC-sqlite3 microlens mtl
    pretty semigroups tagged text time uniplate
  ];
  homepage = "http://travis.athougies.net/projects/beam.html";
  description = "A type-safe SQL mapper for Haskell that doesn't use Template Haskell";
  license = stdenv.lib.licenses.mit;
}
