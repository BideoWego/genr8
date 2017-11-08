#!/bin/bash


echo "Generating new Express app..."


echo "Creating files and folders..."
DIR=$(dirname $(readlink $(which genr8)))
DIR="$DIR/express/boilerplate"
cp -a $DIR/. .


echo "Initializing NPM project..."
echo "---------------------------"
echo
npm init


echo
echo "Installing packages with NPM..."
echo "-------------------------------"
echo
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
npm install --save ${PACKAGES[@]}


echo
echo "Done."















