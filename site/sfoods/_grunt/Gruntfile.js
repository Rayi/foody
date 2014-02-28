module.exports = function(grunt) {

    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
        jspath: '../static/js/',
        csspath: '../static/css/',
        lesspath: '../static/css/less/',
        concat: {
            options: {
                // define a string to put between each file in the concatenated output
                separator: ';'
            },
            base: {
                files: {
                    '<%= jspath %>common.js': [
                        
                    ],
                    '<%= jspath %>hunter.js': [
                    ],
                },
            },
        },
        uglify: {
            options: {
                mangle: {
                    except: ['jQuery', 'require']
                },
                banner: '/*! <%= pkg.name %> <%= grunt.template.today("dd-mm-yyyy") %> */\n'
            },
            dist: {
                files: [
                    {src: 'dest/base.js', dest: 'dest/base.min.js'},
                ]
            }
        },
        less : {
            dev: {
                files: {
                    '<%= csspath %>common.css' : "<%= lesspath %>common.less",
                    '<%= csspath %>index.css' : "<%= lesspath %>index.less"
                }
            }
        },
        watch: {
            options: {
                interrupt: true,
                livereload: true
            },
            scripts: {
                files: [
                ],
                tasks: ['concat']
            },
            styles: {
                files: [
                        '<%= lesspath %>*.less',
                    ],
                tasks: ['less']
            }
        },
        yii: {
            static_path : '../static/js/page/',
        }
    });


    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-contrib-concat');
    grunt.loadNpmTasks('grunt-contrib-less');



    grunt.registerTask('default', ['watch']);

};
