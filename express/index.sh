#!/bin/bash


echo "Generating new Express app..."
echo


DIRECTORIES=(
  config
  helpers
  lib
  models
  public
  public/assets
  routers
  views
  views/errors
  views/layouts
  views/shared
  views/welcome
)

echo "Creating files and directories..."
echo
for D in "${DIRECTORIES[@]}"
do
  mkdir $D
  touch $D/.keep
  echo "  Created $D directory"
done


DIR=$(dirname $(readlink $(which genr8)))
DIR="$DIR/express/boilerplate"

echo "Writing to files..."
echo

cat $DIR/app.js > ./app.js
cat $DIR/gitignore.sh > ./.gitignore
cat $DIR/helpers.js > ./helpers/index.js
cat $DIR/layout.handlebars > ./views/layouts/application.handlebars
cat $DIR/500.handlebars > ./views/errors/500.handlebars
cat $DIR/welcome.handlebars > ./views/welcome/index.handlebars


echo "Initializing NPM project..."
echo
npm init

PACKAGES=(
  body-parser
  cookie-session
  dotenv
  express
  express-flash-messages
  express-handlebars
  express-method-override-get-post-support
  load-helpers
  method-override
  morgan
  morgan-toolkit
)

echo
echo "Installing packages with NPM..."
echo
npm install --save ${PACKAGES[@]}


echo
echo "Done."















