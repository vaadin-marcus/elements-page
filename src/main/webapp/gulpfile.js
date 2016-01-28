var gulp = require('gulp');
var vulcanize = require('gulp-vulcanize');
var htmlmin = require('gulp-htmlmin');
var rename = require('gulp-rename');

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
