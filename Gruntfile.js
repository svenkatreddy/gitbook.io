var _ = require("lodash");
var path = require("path");
var crypto = require('crypto');

var FEATURED = require("./featured.json");

// Fill featured data
FEATURED = _.map(FEATURED, function(book) {
    book.authors = _.map(book.authors || [], function(author) {
        var h = crypto.createHash('md5').update(author.email).digest('hex');
        author.avatar = "http://www.gravatar.com/avatar/"+h+".jpg";
        return author;
    })
    return book;
});



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