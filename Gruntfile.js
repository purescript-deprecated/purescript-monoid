module.exports = function(grunt) {

  "use strict";

  grunt.initConfig({

    libFiles: [
      "src/**/*.purs",
      "bower_components/purescript-*/src/**/*.purs",
    ],

    clean: ["output"],

    pscMake: ["<%=libFiles%>"],
    dotPsci: ["<%=libFiles%>"],
    pscDocs: {
        readme: {
            src: "src/**/*.purs",
            dest: "README.md"
        }
    },

    jsvalidate: ["output/**/*.js"]

  });

  grunt.loadNpmTasks("grunt-contrib-clean");
  grunt.loadNpmTasks("grunt-jsvalidate");
  grunt.loadNpmTasks("grunt-purescript");

  grunt.registerTask("make", ["pscMake", "jsvalidate", "dotPsci", "pscDocs"]);
  grunt.registerTask("default", ["make"]);
};
