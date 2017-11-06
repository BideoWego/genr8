#!/bin/bash


echo "Generating new Express app..."


DIR=$(dirname $(readlink $(which genr8)))
DIR="$DIR/express/boilerplate"

echo "Creating files and folders..."

cp -a $DIR/. .

echo "Initializing NPM project..."
echo "---------------------------"
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
  lodash
  method-override
  morgan
  morgan-toolkit
)

echo
echo "Installing packages with NPM..."
echo "-------------------------------"
echo
npm install --save ${PACKAGES[@]}


echo
echo "Done."















