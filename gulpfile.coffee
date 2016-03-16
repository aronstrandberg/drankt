gulp = require('gulp')
browserSync = require('browser-sync').create()

setupWatchers = ->
  gulp.watch [
    './app/views/**/*.haml'
    './app/assets/javascripts/**/*.coffee'
    './vendor/assets/javascripts/**/*.coffee'
  ], [ 'reload' ]
  gulp.watch [
    './vendor/assets/stylesheets/**/*.scss'
    './app/assets/stylesheets/**/*.scss'
  ], [ 'reloadCSS' ]
  return

gulp.task 'reload', ->
  browserSync.reload()

gulp.task 'reloadCSS', ->
  browserSync.reload '*.scss'


gulp.task 'init', ->
  browserSync.init
    proxy: 'localhost:3000'
    port: 3001
    open: false
    notify: false
    ui: false
  setupWatchers()
  return

gulp.task 'default', [ 'init' ]
