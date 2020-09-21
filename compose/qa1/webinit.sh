shopt -s dotglob
cp -a ../content/some_files_to_transfer destination
rm -rf ../content/*
cp -a * ../content/
chown -R www-data:www-data ../content
