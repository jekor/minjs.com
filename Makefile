# minjs.com

sources := $(shell ls *.sass | grep -v lib.sass)
examples := $(shell ls *-example.html)
csses := $(sources:.sass=.css)

all : index.html $(csses) minform.js longtable.js drcal.js jquery-1.7.1.min.js

sync_options := -avz --exclude 'Makefile' --exclude 'index.m4' --exclude '*-example.html' --exclude 'twitter-bootstrap' --exclude '*.sass' --exclude '._*' --exclude '.DS_Store' --exclude '.sass-cache' --delete * linode:minjs.com/

index.html : index.m4 $(examples)
	m4 $< > $@

%.css : %.sass
	sass $< > $@

minform.js : /home/jekor/project/minform/minform.js
	cp $^ $@

longtable.js : /home/jekor/project/longtable/longtable.js
	cp $^ $@

drcal.js : /home/jekor/project/drcal/drcal.js
	cp $^ $@

jquery-1.7.1.min.js :
	wget http://code.jquery.com/jquery-1.7.1.min.js

sync :
	rsync $(sync_options)

sync-test :
	rsync --dry-run $(sync_options)
