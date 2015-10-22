gulp = require 'gulp'

gulp.task 'default',['sync-doc'],->

gulp.task 'sync-doc',->
    gulp.src('../doc/**/*.*')
        .pipe(gulp.dest('../demo/source/doc'))

gulp.task 'watch',['default'],->
    gulp.watch('../doc/**/*.*',['sync-doc'])
