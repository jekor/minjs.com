{ stdenv, fetchurl, bash, coreutils, findutils, gnugrep, m4, pygments }:

stdenv.mkDerivation {
  name = "minjs.com";
  src = ./.;
  minform = fetchurl {
    url = "https://raw.githubusercontent.com/jekor/minform/4cb5d229f7ad1bae3d13403349418f19bdb22604/minform.js";
    sha256 = "0y462hhfwdgm9g3gwcbf2fvhf7s22dpbb322k3y96271f91myq65";
  };
  longtable = fetchurl {
    url = "https://raw.githubusercontent.com/jekor/longtable/6dd9e65bf3d02f99fb6a78bd34304c0e09775f48/longtable.js";
    sha256 = "1hjcikajh8xvzk0qvdkafn07bzc5dd903qgvhwskky9qb7jb2n9w";
  };
  drcal = fetchurl {
    url = "https://raw.githubusercontent.com/jekor/drcal/687f255e556d646fdba86296dc7616553f05d7eb/drcal.js";
    sha256 = "1syb5bpb9a10h4lpdvrnbn7sk6ar6pszkllbb131pdshnmrmvm8m";
  };
  bootstrap = fetchurl {
    url = "https://raw.githubusercontent.com/twbs/bootstrap/f92759b36db43e782e4235f1f214ac5851383f9b/bootstrap.min.css";
    sha256 = "18ymn5k5kdxk4mvarqy1s8dqb1czr3132gm9lp92m27rxfkxmcyc";
  };
  builder = ./builder.sh;
  buildInputs = [ bash m4 pygments ];
  inherit bash coreutils findutils gnugrep m4 pygments;
}
