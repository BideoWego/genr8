Genr8
=====

![Generator](genr8.jpg)


Genr8 is a [DIY](https://en.wikipedia.org/wiki/Do_it_yourself) generator written in Bash. Use it to help you generate boilerplate for your applications.


## Installation

1. Clone the repo anywhere on your machine
    - **Note** If you want to be able to create your own generators and merge upstream updates, fork and clone the repo.
1. Create a symlink with `ln -s /path/to/genr8/index.sh /usr/local/bin/genr8`
1. Make the linked file executable with `chmod +x /usr/local/bin/genr8`


## The Express Generator

Genr8 comes with a single generator for [Express](https://expressjs.com) applications.

```
=====
Genr8
=====

Please specify a generator from the list:
 express
```


### Running the Generator

Running `$ genr8 express` will start the generator. It will create boilerplate files and folders for an Express application with [Handlebars](http://handlebarsjs.com) as the view engine.


### Generated Files and Folders

Here is a quick outline of what the generator creates and the purpose in mind for each file and folder.

* `config/` - A place to put config files for connecting to databases etc...
* `helpers/` - A directory in which files suffixed with `_helper.js` will be automatically loaded. Helper functions in these files will be available in views. Comes with some common helpers out of the box
* `lib/` - Put your own libraries here
* `models/` - Model files and folders
* `public/` - Express uses this folder to serve static assets
* `routers/` - Router files go here
* `views/` - A place to put view templates. Comes populated with a default layout, welcome page and 500 error page
* `.gitignore` - Ignores `node_modules/` and `npm-debug.log` by default. Add files for Git to ignore here
* `app.js` - The main Express application file
* `repl.js` - A REPL for you to test drive your code. Require modules, libraries etc... here to play around and test them out


## Creating Generators

If you wish to create a generator:

1. Create a folder in the `genr8/` directory
1. Add an `index.sh` file in which to put the commands/script for your generator
1. Run `$ genr8` and you should see the name of that folder added to the list of available generators

Open the `express/` folder to see an example of how a generator is created.

```
=====
Genr8
=====

Please specify a generator from the list:
 express
 my_awesome_generator
```

**NOTE** when creating your own generators with a symlinked executable you'll need to get the path to the original `genr8/` folder to access your boilerplate. You can do so with:

```bash
# /usr/local/bin/genr8

DIR=$(dirname $(readlink $(which genr8)))
#=> /path/to/cloned/genr8/repo/
```


## TODOs [Unreleased]

- Add Express JSON API generator for API only back-end
- Add helpers similar to Rails http://api.rubyonrails.org/ for the following:
    - Asset tag/URL helpers
    - Date
    - Debug
    - Number
    - Sanitize
    - Text
- Tests for generated application (Mocha or Jasmine)
- Add AngularJS 1.x generator


## License

Copyright 2017 Chris Scavello <bideowego@gmail.com>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.






