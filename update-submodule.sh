#!/bin/bash

# A bash script for easily synching submodules with
# most recent commits from source repositories.

read -p "Enter the path to the submodule directory: " SUBMODULE_DIR

if [ ! -d "$SUBMODULE_DIR" ]; then
  echo "Submodule directory $SUBMODULE_DIR does not exist. Exiting..."
  exit 1
fi

cd $SUBMODULE_DIR || exit
REMOTE_NAME=$(git remote)

if [ -z "$REMOTE_NAME" ]; then
  echo "No remote found for submodule. Exiting..."
  exit 1
fi

echo "Checking out master branch in $SUBMODULE_DIR..."
git checkout master

echo "Pulling the latest changes from the master branch..."
git pull origin master

cd - > /dev/null

echo "Staging submodule changes..."
git add $SUBMODULE_DIR

echo "Committing the submodule update..."
git commit -m "Updates submodule to latest commit on master."

PARENT_REMOTE_NAME=$(git remote)
echo "Pushing changes to remote $PARENT_REMOTE_NAME..."
git push $PARENT_REMOTE_NAME $(git branch --show-current)

echo "Submodule updated."