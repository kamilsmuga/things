module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'

    clean: 
      app: ['public']

    uglify: 
        options: 
          banner: '/*! <%= pkg.name %> <%= grunt.template.today("yyyy-mm-dd") %> */\n'
        build: 
          src: 'src/<%= pkg.name %>.js',
          dest: 'build/<%= pkg.name %>.min.js'
  
  # Load plugins
  grunt.loadNpmTasks 'grunt-contrib-uglify' 

  # Building
  grunt.registerTask 'default', ['uglify']
