source $stdenv/setup

mkdir $out
ln -s $minform $out/minform.js
ln -s $longtable $out/longtable.js
ln -s $drcal $out/drcal.js
ln -s $jquery $out/jquery.js
ln -s $bootstrap $out/bootstrap.css
pygmentize -S colorful -f html > $out/pygments.css
cp $src/minjs.css $src/header-pattern.png $out/
(cd $src && m4 index.m4 > $out/index.html)
