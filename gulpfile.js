/* jshint node: true */
"use strict";

var gulp = require("gulp");
var plumber = require("gulp-plumber");
var purescript = require("gulp-purescript");

var sources = [
  "src/**/*.purs",
  "bower_components/purescript-*/src/**/*.purs"
];

var foreigns = [
  "bower_components/purescript-*/src/**/*.js"
];

gulp.task("make", function() {
  return gulp.src(sources)
    .pipe(plumber())
    .pipe(purescript.pscMake({ ffi: foreigns }));
});

gulp.task("docs", function () {
  return gulp.src(sources)
    .pipe(plumber())
    .pipe(purescript.pscDocs({
      docgen: {
        "Data.Monoid": "docs/Data.Monoid.md",
        "Data.Monoid.Additive": "docs/Data.Monoid.Additive.md",
        "Data.Monoid.Dual": "docs/Data.Monoid.Dual.md",
        "Data.Monoid.Endo": "docs/Data.Monoid.Endo.md",
        "Data.Monoid.Inf": "docs/Data.Monoid.Inf.md",
        "Data.Monoid.Multiplicative": "docs/Data.Monoid.Multiplicative.md",
        "Data.Monoid.Sup": "docs/Data.Monoid.Sup.md"
      }
    }));
});

gulp.task("dotpsci", function () {
  return gulp.src(sources)
    .pipe(plumber())
    .pipe(purescript.dotPsci());
});

gulp.task("default", ["make", "docs", "dotpsci"]);
