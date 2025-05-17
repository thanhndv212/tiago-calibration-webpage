#!/bin/bash

# Check if the new project name is provided
if [ $# -eq 0 ]; then
    echo "Usage: ./rename_project.sh <NewProjectName>"
    echo "Example: ./rename_project.sh MyAwesomeProject"
    exit 1
fi

NEW_PROJECT_NAME=$1
OLD_PROJECT_NAME="figaroh-plus"
# Lowercase versions for file/directory names
OLD_PROJECT_NAME_LOWER="figaroh-plus"
NEW_PROJECT_NAME_LOWER=$(echo "$NEW_PROJECT_NAME" | tr '[:upper:]' '[:lower:]')

echo "Replacing '$OLD_PROJECT_NAME' with '$NEW_PROJECT_NAME' throughout the project..."

# Find and replace in HTML, CSS, JS, and MD files (case-sensitive for content)
find . -type f \( -name "*.html" -o -name "*.css" -o -name "*.js" -o -name "*.md" \) -not -path "*/\.*" | while read -r file; do
    echo "Processing file: $file"
    # Replace the project name while preserving case
    sed -i '' "s/$OLD_PROJECT_NAME/$NEW_PROJECT_NAME/g" "$file"
    # Replace lowercase versions
    sed -i '' "s/$OLD_PROJECT_NAME_LOWER/$NEW_PROJECT_NAME_LOWER/g" "$file"
    # Replace occurrences in URLs, paths, etc.
    sed -i '' "s/figaroh-plus\.github\.io/$NEW_PROJECT_NAME_LOWER\.github\.io/g" "$file"
done

# Update title tag in HTML files
find . -name "*.html" | while read -r file; do
    sed -i '' "s/<title>.*<\/title>/<title>$NEW_PROJECT_NAME<\/title>/g" "$file"
done

# Update meta tags
find . -name "*.html" | while read -r file; do
    sed -i '' "s/content=\".*figaroh-plus.*\"/content=\"$NEW_PROJECT_NAME\"/g" "$file"
done

# Update README.md title
sed -i '' "1s/^# .*/# $NEW_PROJECT_NAME/" README.md

# Rename any directories if needed
if [ -d "$OLD_PROJECT_NAME_LOWER" ]; then
    echo "Renaming directory $OLD_PROJECT_NAME_LOWER to $NEW_PROJECT_NAME_LOWER"
    mv "$OLD_PROJECT_NAME_LOWER" "$NEW_PROJECT_NAME_LOWER"
fi

echo "Project name replacement completed!"
echo "Please review the changes to make sure everything was replaced correctly."
echo "Don't forget to update any GitHub repository names or other external references manually."