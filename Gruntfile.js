var path = require("path");
var FEATURED = require("./featured.json");

module.exports = function (grunt) {
    // Load NPM tasks
    grunt.loadNpmTasks('grunt-contrib-less');
    grunt.loadNpmTasks('grunt-swig');
    grunt.loadNpmTasks('grunt-gh-pages');
    grunt.loadNpmTasks('grunt-http-server');

    // Init GRUNT configuraton
    grunt.initConfig({
        'pkg': grunt.file.readJSON('package.json'),
        'less': {
            development: {
                options: {
                    compress: true,
                    yuicompress: true,
                    optimization: 2
                },
                files: {
                    "www/static/style.css": "stylesheets/main.less"
                }
            }
        },
        'swig': {
            development: {
                init: {
                    autoescape: true
                },
                dest: "www/",
                src: ['templates/*.swig'],
                generateSitemap: true,
                generateRobotstxt: true,
                siteUrl: 'http://www.gitbook.io',
                production: true,
                ga_account_id: 'UA-xxxxxxxx-1',
                
                example: "http://gitbookio.github.io/javascript/",
                featured: FEATURED
            }
        },
        'gh-pages': {
            options: {
                base: 'www'
            },
            src: ['**']
        },
        'http-server': {
            'dev': {
                // the server root directory
                root: 'www',

                port: 4000,
                host: "127.0.0.1",

                showDir : true,
                autoIndex: true,
                defaultExt: "html",

                //wait or not for the process to finish
                runInBackground: false
            }
        }
    });

    // Build
    grunt.registerTask('build', [
        'less',
        'swig'
    ]);

    grunt.registerTask('publish', [
        'build',
        'gh-pages'
    ]);

    grunt.registerTask('test', [
        'build',
        'http-server'
    ]);

    grunt.registerTask('default', [
        'build'
    ]);
};