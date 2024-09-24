# Unzip
unzip "./client/1.20 - Pixel Paradise 0.1.zip" -d "./temp"

# Copy mods
rm -r ./server/mods
cp -r "./temp/overrides/mods" ./server

# Copy config
rm -r ./server/config
cp -r "./temp/overrides/config" ./server

# Copy manifest
rm ./server/manifest.json
cp "./temp/manifest.json" ./server/manifest.json

# Generate modlist
python3 ./generate_server_modlist.py

# Remove zipped folder
rm -r "./temp"