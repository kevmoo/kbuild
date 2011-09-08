# kbuild

Helper to make using [Google Closure Tools](http://code.google.com/closure/) easier.  
By [Kevin Moore](http://j832.com)

### tl;dr

The **Closure Tools** let you build dependency files, compile your javascript, lint\* and fix\*.

...but you end up passing a **lot** of command line parameters to each.

`kbuild` lets you define a single **yaml** file (`default.kbuild`) in the root of your project to make using these tools a lot easier.

\* If you install **closure_linter**. See below.

### kbuild --help

    usage: kbuild [-h] [--buildfile BUILDFILE] [--debug]
                  [--language_in {ECMASCRIPT3,ECMASCRIPT5,ECMASCRIPT5_STRICT}]
                  [{deps,compile,both,fix,lint}]

    Prepare a closure-based javascript set.

    positional arguments:
      {deps,compile,both,fix,lint}
                            specify to either create a deps file, compile, or both

    optional arguments:
      -h, --help            show this help message and exit
      --buildfile BUILDFILE
                            the file to parse
      --debug               enable debug output when in compile mode
      --language_in {ECMASCRIPT3,ECMASCRIPT5,ECMASCRIPT5_STRICT}
                            Sets what language spec that input sources conform.

### Requirements

* **java** - Tested with 1.6
* **python** - 2.7 is required
    * **yaml** - `pip install PyYAML`
    * **closure_linter** (optional) - `pip install http://closure-linter.googlecode.com/files/closure_linter-2.3.tar.gz`
        * enables `kbuild fix` and `kbuild lint`

### Show me an example

`kbuild` is used in these OSS projects by [Pixel Lab](http://thinkpixellab.com).

**ThinkQR** is the easiest to start with.  
If you're cloning these locally, make sure you sync up all of the submodules before you try _kbuild_.

* [ThinkQR](https://github.com/thinkpixellab/thinkqr)
* The [Box2d Demo site](https://github.com/thinkpixellab/box2dWeb)
* [Agent 008 Ball](https://github.com/thinkpixellab/agent8ball)

### default.kbuild file from ThinkQR

    inputs:
      - js/app/application.js
    base_path: js/closure/closure
    js_paths:
      - js/app
      - js/pl/src
      - js/closure/closure
    deps_path: js/deps.js
    compile_path: js/compiled.js
    externs:
      - js/externs/jquery-1.6.js
