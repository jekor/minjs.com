<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="/bootstrap.css">
    <link rel="stylesheet" href="/minjs.css">
    <link rel="stylesheet" href="/pygments-colorful.css">
    <title>minjs - Minimalist JavaScript</title>
  </head>
  <body>
    <div class="topbar">
      <div class="topbar-inner">
        <div class="container">
          <a class="brand" href="">minjs</a>
          <ul class="nav">
            <li><a href="#overview">Overview</a></li>
            <li><a href="#minform">minform</a></li>
            <li><a href="#longtable">longtable</a></li>
            <li><a href="#drcal">drcal</a></li>
          </ul>
        </div>
      </div>
    </div>

    <header>
      <div class="container">
        <h1>Minimalist JavaScript</h1>
        <p>Lightweight Widgets from Vocabulink</p>
      </div class="container">
    </header>

    <div class="container">

      <section id="overview">
        <div class="row">
          <div class="span-one-third">
            <h3>Minimal</h3>
            <p>minjs stays out of your way. It does not dictate how you to design your UI. It tries to make no assumptions about the layout of the HTML or CSS it's running in.</p>
          </div>
          <div class="span-one-third">
            <h3>Modular</h3>
            <p>minjs is not a framework. It's a collection of independent components. Use only what you need.</p>
          </div>
          <div class="span-one-third">
            <h3>Tested</h3>
            <p>Each minjs component was created for <a href="http://www.vocabulink.com">Vocabulink</a> and arose from real needs.</p>
          </div>
        </div>
      </section>

      <!-- Examples need jQuery -->
      <script src="/jquery-1.7.1.js"></script>

      <section id="minform">
        <div class="page-header">
          <a class="btn small primary pull-right" href="https://github.com/jekor/minform">Download from GitHub</a>
          <h1>minform <small>HTML5 form enhancements with no extra JS</small></h1>
        </div>
        <p>minform allows you to use a few HTML5 form enhancements even if the browser doesn't support them.</p>
        <div class="row">
          <div class="span-8">
include(`minform-example.html')
          </div>
          <div class="span-8">
syscmd(`pygmentize -f html minform-example.html')
          </div>
        </div>
      </section>

      <section id="longtable">
        <div class="page-header">
          <a class="btn small primary pull-right" href="https://github.com/jekor/longtable">Download from GitHub</a>
          <h1>longtable <small>Add features to tables with minimal fuss</small></h1>
        </div>
        <p>longtable takes an existing HTML table and converts it into a paged table. No need to worry about AJAX, etc. Oh, and styling is up to you.</p>
        <div class="row">
          <div class="span-8">
include(`longtable-example.html')
            <p><a href="http://en.wikipedia.org/wiki/JavaScript#Versions">http://en.wikipedia.org/wiki/JavaScript#Versions</a> <a href="http://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA</a></p>
          </div>
          <div class="span-8">
syscmd(`pygmentize -f html longtable-example.html')
          </div>
        </div>
      </section>

      <section id="drcal">
        <div class="page-header">
          <a class="btn small primary pull-right" href="https://github.com/jekor/drcal">Download from GitHub</a>
          <h1>drcal <small>A simple calendar framework</small></h1>
        </div>
        <p>Can't find a calendar that looks and behaves just how you want? drcal provides a minimal "calendar framework", if you will. It handles the date calculations and a few other basic tasks and leaves the behavior and styling up to you.</p>
        <div class="row">
          <h3>Minimal Example</h3>
          <div class="span-8">
include(`drcal-example.html')
          </div>
          <div class="span-8">
syscmd(`pygmentize -f html drcal-example.html')
          </div>
        </div>
        <div class="row">
          <h3>Nicer Example</h3>
          <div class="span-8">
include(`drcal-2-example.html')
          </div>
          <div class="span-8">
syscmd(`pygmentize -f html drcal-2-example.html')
          </div>
        </div>
      </section>

    </div>

    <footer>
      <div class="container">
        <p>Hi.</p>
        <p><a href="http://www.colourlovers.com/pattern/1074/sucks_you_in">Background image</a> by <a href="http://www.colourlovers.com/lover/technicolorrr">technicolorrr</a>.</p>
        <p>Copyright 2012 <a href="http://jekor.com/">Chris Forno</a></p>
      </div>
    </footer>

    <!-- minjs components below -->
    <script src="/minform.js"></script>
    <script src="/longtable.js"></script>
    <script src="/drcal.js"></script>

<!-- Google Analytics -->
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-73938-4']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>

  </body>
</html>
