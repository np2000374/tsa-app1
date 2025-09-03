#!/bin/bash

# Define repo folder name for GitHub Pages base-href
REPO_NAME="Info_Template"

echo "🧹 Cleaning project..."
flutter clean

#Change repo name to YOUR REPO's name
echo "🔨 Building Flutter web with base href /$REPO_NAME/ ..."
flutter build web --base-href="/$REPO_NAME/"

echo "📁 Clearing docs folder..."
rm -rf docs/*

echo "📂 Copying build to docs..."
cp -a build/web/. docs/

echo "📤 Committing changes..."
git add docs
git commit -m "Deploy updated build"
git push

echo "✅ Deployment complete! Check your site at:"
#Change repo name to YOUR REPO's name
echo "https://<your-github-username>.github.io/$REPO_NAME/"
