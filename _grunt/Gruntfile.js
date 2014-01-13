module.exports = function(grunt) {

    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
        concat: {
          options: {
            separator: ';'
          },
          dist: {
            src: ['src/**/*.js'],
            dest: 'dist/<%= pkg.name %>.js'
          }
        },
        less: {
            development: {
                files: [
                    {
                        src: "../static/css/less/index.less",
                        dest: "../static/css/index.css"
                    },
                    {
                        src: "../static/css/less/common.less",
                        dest: "../static/css/common.css"
                    }
                ]
            }
        },
        watch: {
            files: ['../static/**/*.less'],
            tasks: ['less']
        }
    });

    grunt.loadNpmTasks('grunt-contrib-less');
    grunt.loadNpmTasks('grunt-contrib-concat');
    grunt.loadNpmTasks('grunt-contrib-watch');

    grunt.registerTask('default', ['watch']);

};