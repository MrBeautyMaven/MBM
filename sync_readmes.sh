#!/bin/zsh
# MBM README Sync Script
# Keeps all subfolder README files up-to-date with the main README

echo "🔄 Syncing MBM README files across all brand folders..."

# List of subfolders to sync
folders=(brand_assets marketing product_info social_media website)

# Copy main README into each folder
for folder in $folders; do
  if [ -d "$folder" ]; then
    cp README.md "$folder/README.md"
    echo "✅ Updated: $folder/README.md"
  else
    echo "⚠️ Skipped: $folder (not found)"
  fi
done

# Add, commit, and push updates
git add .
git commit -m "Auto-sync MBM README files across subfolders"
git push origin main

echo "🎉 All README files synced and pushed successfully — MBM brand consistency maintained!"
