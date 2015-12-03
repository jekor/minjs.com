source $stdenv/setup

mkdir $out
ln -s $minform $out/minform.js
ln -s $longtable $out/longtable.js
ln -s $drcal $out/drcal.js
ln -s $bootstrap $out/bootstrap.css
pygmentize -S colorful -f html > $out/pygments.css
cp $src/minjs.css $src/header-pattern.png $out/
uglifyjs $minform --mangle --screw-ie8 -o $out/minform.min.js
uglifyjs $longtable --mangle --screw-ie8 -o $out/longtable.min.js
uglifyjs $drcal --mangle --screw-ie8 -o $out/drcal.min.js
(cd $src && m4 index.m4 > $out/index.html)
