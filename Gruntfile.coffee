module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'

    bower:
      install:
        options:
          targetDir: 'vendor'
          install: true

    coffee:
      compile:
        files:
          'src/js/tdd_angular.js': ['src/**/*.coffee']
        options:
          bare: true
          sourceMap: false

    concat:
      js:
        src: ['vendor/jquery/jquery.js',
              'vendor/bootstrap/bootstrap.js',
              'vendor/angular/angular.js']
        dest: 'src/js/vendor.js'
      css:
        src: 'vendor/bootstrap/bootstrap.css'
        dest: 'src/css/bootstrap.css'

    watch:
      coffee:
        files: 'src/**/*.coffee'
        tasks: 'coffee:compile'

  grunt.loadNpmTasks 'grunt-bower-task'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-concat'
  grunt.loadNpmTasks 'grunt-contrib-watch'

