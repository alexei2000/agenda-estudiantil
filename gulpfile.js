import gulp from "gulp";
const { task, dest, src, series } = gulp;
import gulpTypescript from "gulp-typescript";
const { createProject } = gulpTypescript;
var tsProject = createProject("tsconfig.json");
import { deleteAsync } from "del";

// Task which would transpile typescript to javascript
task("typescript", function () {
  return tsProject.src().pipe(tsProject()).js.pipe(dest("dist"));
});

// Task which would delete the old dist directory if present
task("build-clean", async function () {
  return await deleteAsync(["./dist"]);
});

// Task which would just create a copy of the current views directory in dist directory
task("views", function () {
  return src("./src/views/**/*.ejs").pipe(dest("./dist/views"));
});

// Task which would just create a copy of the current static assets directory in dist directory
task("assets", function () {
  return src("./src/public/assets/**/*").pipe(dest("./dist/public/assets"));
});

// The default task which runs at start of the gulpfile.js
task("default", series("build-clean", "typescript", "views", "assets"), () => {
  console.log("Done");
});
