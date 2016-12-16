const vaadinElements = ['vaadin-combo-box', 'vaadin-context-menu', 'vaadin-date-picker', 'vaadin-grid', 'vaadin-icons', 'vaadin-split-layout', 'vaadin-upload'];

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
      callback(body.devDependencies);
    } else {
      callback({});
    }
  });
}

function findChildren(data, vaadinElement) {
  data.forEach(function(el) {
    if (el.type === 'tag') {
      if (el.name === 'link' && el.attribs && el.attribs.href) { // or somethign else related style, script...

        if (el.attribs.href.includes('https://cdn.vaadin.com/vaadin-core-elements/latest/')) { // points to cdn???
          importUrls.push(el.attribs.href.replace('https://cdn.vaadin.com/vaadin-core-elements/latest/', bowerComponents + '/'));
        } else if (el.attribs.href.includes('../../')) { // points to bower_components
          importUrls.push(el.attribs.href.replace('../../', bowerComponents + '/'));
        } else if (el.attribs.href.includes('../')) { // points to bower_components/element-name/
          importUrls.push(el.attribs.href.replace('../', bowerComponents + '/' + vaadinElement + '/'));
        } else { // points to bower_components/element-name/demo/
          importUrls.push(bowerComponents + '/' + vaadinElement + '/demo/' + el.attribs.href);
        }
        
      } else if (el.children) {
        findChildren(el.children, vaadinElement);
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
    'clear',
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
    'fetch-elements-demo-file-imports',
    'remove-duplicate-imports',
    'create-imports-link-tags',
    'update-imports-html',
    function() {
      //console.log(importUrls);
      done();
    });
});

// Private tasks beneath this

gulp.task('clear', function() {
  // TODO clear bower.json devDependencies
  devDependenciesToAdd = {};
  importsString = '';
});

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
  // Mock Data when GitHub API limits hit
  /*devDependenciesToAdd = {
  	'web-component-tester': '^4.0.0',
  	  'test-fixture': 'PolymerElements/test-fixture#^1.0.0',
  	  'iron-test-helpers': 'PolymerElements/iron-test-helpers#^1.0.0',
  	  'iron-component-page': 'PolymerElements/iron-component-page#^1.0.0',
  	  'iron-icons': '^1.2.0',
  	  'iron-demo-helpers': 'PolymerElements/iron-demo-helpers#^1.0.0',
  	  'iron-form': 'PolymerElements/iron-form#^1.0.15',
  	  'elements-demo-resources': 'Vaadin/elements-demo-resources#master',
  	  'iron-flex-layout': 'polymerelements/iron-flex-layout#^1.3.0',
  	  'iron-meta': 'polymerelements/iron-meta#^1.1.1',
  	  sugar: '^2.0.0',
  	  webcomponentsjs: 'webcomponents/webcomponentsjs#^0.7.0',
  	  'iron-icon': '^1.0.9',
  	  'paper-button': '^1.0.14',
  	  'mock-http-request': 'philikon/MockHttpRequest#master',
  	  'paper-toast': 'PolymerElements/paper-toast#^1.0.0'
  }*/

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
          path: bowerComponentsFolder + '/' + el + '/demo/' + path
        });
      });
      count++;

      if (count === vaadinElements.length) {
        done();
      }
    });
  });
});

function readFile() {

}

gulp.task('fetch-elements-demo-file-imports', function(done) {
  var count = 0;
  demoPaths.forEach(function(el) {
    fs.readFile(el.path, 'utf8', function(err, html){
      var handler = new htmlparser.DefaultHandler(function (error, dom) {
        if (!error) {
          findChildren(dom, el.el);
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
