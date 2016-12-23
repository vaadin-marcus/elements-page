const vaadinElements = ['vaadin-combo-box', 'vaadin-context-menu', 'vaadin-date-picker', 'vaadin-grid', 'vaadin-icons', 'vaadin-split-layout', 'vaadin-upload'];
const ignoredDependencies = ['web-component-tester', 'test-fixture', 'iron-test-helpers'];

var gulp = require('gulp');
var vulcanize = require('gulp-vulcanize');
var htmlmin = require('gulp-htmlmin');
var rename = require('gulp-rename');
var XMLHttpRequest = require("xmlhttprequest").XMLHttpRequest;
var runSequence = require('run-sequence');
var jeditor = require("gulp-json-editor");
var request = require("request");
var htmlparser = require("htmlparser");
var fs = require('fs');
var cheerio = require('cheerio')

var devDependenciesToAdd = {};
var demoPaths = [];
var importUrls = [];
var importsString = '';
const bowerComponents = 'bower_components';
const bowerComponentsFolder = __dirname + '/' + bowerComponents;

function base64Decode(data) {
  if (typeof Buffer.from === "function") {
    // Node 5.10+
    return Buffer.from(data, 'base64').toString();
  } else {
    // older Node versions
    return new Buffer(data, 'base64').toString();
  }
}

function fetchRepoData(repo, callback) {
  var url = 'https://raw.githubusercontent.com/vaadin/' + repo + '/master/bower.json';

  request({
    url: url,
    json: true
  }, function(error, response, body) {

    if (!error && response.statusCode === 200) {
      var devDependencies = body.devDependencies;
      ignoredDependencies.forEach(function(dependency) {
        delete devDependencies[dependency];
      });
      callback(devDependencies);
    } else {
      callback({});
    }
  });
}

function findChildren(data, element) {
  data.forEach(function(el) {
    if (el.type === 'tag') {
      if (el.name === 'link' && el.attribs && el.attribs.href) { // or somethign else related style, script...

        if (element.demo) {
          if (el.attribs.href.includes('https://cdn.vaadin.com/vaadin-core-elements/latest/')) { // points to cdn???
            importUrls.push(el.attribs.href.replace('https://cdn.vaadin.com/vaadin-core-elements/latest/', bowerComponents + '/'));
          } else if (el.attribs.href.includes('../../')) { // points to bower_components
            importUrls.push(el.attribs.href.replace('../../', bowerComponents + '/'));
          } else if (el.attribs.href.includes('../')) { // points to bower_components/element-name/
            importUrls.push(el.attribs.href.replace('../', bowerComponents + '/' + element.el + '/'));
          } else { // points to bower_components/element-name/demo/
            importUrls.push(bowerComponents + '/' + element.el + '/demo/' + el.attribs.href);
          }
        } else {
          if (el.attribs.href.includes('../')) { // points to bower_components
            importUrls.push(el.attribs.href.replace('../', bowerComponents + '/'));
         } else { // points to bower_components/element-name/
           importUrls.push(el.attribs.href.replace('../', bowerComponents + '/' + element.el + '/'));
         }
        }
      } else if (el.children) {
        findChildren(el.children, element);
      }
    }
  });
}

gulp.task('default', function() {
  return gulp.src('./imports.html')
    .pipe(vulcanize({
      inlineScripts: true,
      inlineCss: true
    }))
    // Y U No Work?!
    // .pipe(htmlmin({
    //   collapseWhitespace: true,
    //   minifyJS: true,
    //   minifyCSS: true
    // }))
    .pipe(rename('all-the-things.html'))
    .pipe(gulp.dest('./'));
});

gulp.task('update-bower', function(done) {
  runSequence(
    'fetch-combo-box-dev-dependencies',
    'fetch-date-picker-dev-dependencies',
    'fetch-grid-dev-dependencies',
    'fetch-split-layout-dev-dependencies',
    'fetch-icons-dev-dependencies',
    'fetch-upload-dev-dependencies',
    'update-bower-json-file',
    function() {
      done();
      console.log('bower.json is updated. Go to `elements-page` directory and run `bower install`');
    });
});

gulp.task('update-imports', function(done) {
  runSequence(
    'fetch-elements-demo-file-paths',
    'fetch-elements-api-site-paths',
    'fetch-elements-demo-file-imports',
    'remove-duplicate-imports',
    'create-imports-link-tags',
    'update-imports-html',
    function() {
      //console.log(importUrls);
      done();
    });
});

gulp.task('update-demos', function(done) {
  runSequence(
    'create-combo-box-demos',
    function() {
      //console.log(importUrls);
      done();
    });
});

gulp.task('create-combo-box-demos', function(done) {
  // Create a new file, which we'll update later
  fs.createReadStream('elements-demos/template.html').pipe(fs.createWriteStream('elements-demos/vaadin-combo-box-demo.html'));
  var demos = [];

  // Get element's demo/index.html file, from which we'll know the demo files
  fs.readFile('bower_components/vaadin-combo-box/demo/index.html', 'utf8', function(err, html){
    var $ = cheerio.load(html);
    $('li').each(function(i, elem) {
      demos.push({
        name: $(this).text(),
        href: $(this).find('a').attr('href') ? $(this).find('a').attr('href') : 'index.html'
      });
    });

    demos.forEach(function(demo) {
      fs.readFile('bower_components/vaadin-combo-box/demo/' + demo.href, 'utf8', function(err, html){
        console.log(html);
      });
    });
    console.log(demos);
    //console.log($('li'));
    /*var htmlEl = document.createElement('html');
    htmlEl.innerHTML = html;
    console.log(htmlEl);*/
  });


  fs.readFile('elements-demos/vaadin-combo-box-demo.html', 'utf8', function(err, html){
    //console.log(html);
    // 0. get demo/index.html
    // 1. get navigation
    // 2. from navigation, get other files
    // 3. from all the files, get demo-snippets
    /*var handler = new htmlparser.DefaultHandler(function (error, dom) {
      if (!error) {
        findChildren(dom, el);
      }
      count++
      if (count === demoPaths.length) {
        done();
      }
    });
    var parser = new htmlparser.Parser(handler);
    parser.parseComplete(html);*/
  });
  done();
});

// Private tasks beneath this

gulp.task('fetch-combo-box-dev-dependencies', function(done) {
  fetchRepoData('vaadin-combo-box', function(data) {
    Object.assign(devDependenciesToAdd, data);
    done();
  });
});

gulp.task('fetch-date-picker-dev-dependencies', function(done) {
  fetchRepoData('vaadin-date-picker', function(data) {
    Object.assign(devDependenciesToAdd, data);
    done();
  });
});

gulp.task('fetch-grid-dev-dependencies', function(done) {
  fetchRepoData('vaadin-grid', function(data) {
    Object.assign(devDependenciesToAdd, data);
    done();
  });
});

gulp.task('fetch-split-layout-dev-dependencies', function(done) {
  fetchRepoData('vaadin-split-layout', function(data) {
    Object.assign(devDependenciesToAdd, data);
    done();
  });
});

gulp.task('fetch-icons-dev-dependencies', function(done) {
  fetchRepoData('vaadin-icons', function(data) {
    Object.assign(devDependenciesToAdd, data);
    done();
  });
});

gulp.task('fetch-upload-dev-dependencies', function(done) {
  fetchRepoData('vaadin-upload', function(data) {
    Object.assign(devDependenciesToAdd, data);
    done();
  });
});

gulp.task('update-bower-json-file', function(done) {
  gulp.src("./../../../bower.json")
    .pipe(jeditor({
      'devDependencies': devDependenciesToAdd
    }))
    .pipe(gulp.dest("./../../../"));
  done();
});

gulp.task('fetch-elements-demo-file-paths', function(done) {
  var count = 0;
  vaadinElements.forEach(function(el, i) {
    fs.readdir(bowerComponentsFolder + '/' + el + '/demo/', function(err, paths) {
      paths.forEach(function(path) {
        demoPaths.push({
          el: el,
          path: bowerComponentsFolder + '/' + el + '/demo/' + path,
          demo: true
        });
      });
      count++;

      if (count === vaadinElements.length) {
        done();
      }
    });
  });
});

gulp.task('fetch-elements-api-site-paths', function(done) {
  var count = 0;
  vaadinElements.forEach(function(el, i) {
    demoPaths.push({
      el: el,
      path: bowerComponentsFolder + '/' + el + '/index.html',
      demo: false
    });
  });
  done();
});

gulp.task('fetch-elements-demo-file-imports', function(done) {
  var count = 0;
  demoPaths.forEach(function(el) {
    fs.readFile(el.path, 'utf8', function(err, html){
      var handler = new htmlparser.DefaultHandler(function (error, dom) {
        if (!error) {
          findChildren(dom, el);
        }
        count++
        if (count === demoPaths.length) {
          done();
        }
      });
      var parser = new htmlparser.Parser(handler);
      parser.parseComplete(html);
    });
  });
});

gulp.task('remove-duplicate-imports', function(done) {
  importUrls = importUrls.filter(function(item, pos) {
    return importUrls.indexOf(item) == pos;
  });
  done();
});

gulp.task('create-imports-link-tags', function(done) {
  importsString = '';
  importUrls.forEach(function(url) {
    importsString += ' <link rel="import" href="' + url + '">';
  });
  done();
})

gulp.task('update-imports-html', function(done) {
  fs.readFile(__dirname + '/imports.html', 'utf8', function(err, html){
    html = html.replace(/<!-- start dynamic imports -->([\s\S]*?)<!-- end dynamic imports -->/, '<!-- start dynamic imports -->' + importsString + ' <!-- end dynamic imports -->');
    fs.writeFile(__dirname + '/imports.html', html, 'utf8', done);
  });
});
