var gulp = require("gulp")
var template = require("gulp-template")
var rename = require("gulp-rename")

var ROOT_LANG = "python"
var aliasLangs = [
  "javascript",
  "html",
  "php",
  "typescript",
  "less",
  "css",
  "sass",
  "scss",
  "ruby",
  "c",
  "cpp",
  "xml",
  "json",
]

aliasLangs.forEach(function(lang) {
  gulp.task(lang, function() {
    return gulp.src("./arc.template.vim")
               .pipe(template({
                 root_lang: ROOT_LANG,
                 lang: lang
               }))
               .pipe(rename("arc.vim"))
               .pipe(gulp.dest("./syntax_checkers/" + lang))
  })
})

gulp.task("build", aliasLangs)
