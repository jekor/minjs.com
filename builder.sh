source $stdenv/setup

mkdir $out
uglifyjs $minform --mangle --screw-ie8 -o $out/minform.min.js
uglifyjs $longtable --mangle --screw-ie8 -o $out/longtable.min.js
uglifyjs $drcal --mangle --screw-ie8 -o $out/drcal.min.js
cat $out/minform.min.js $out/longtable.min.js $out/drcal.min.js > $out/minjs.min.js
cat $bootstrap <(pygmentize -S colorful -f html) $src/minjs.css > $out/minjs.css
cp $src/header-pattern.png $out/
(cd $src && m4 index.m4 > $out/index.html)
