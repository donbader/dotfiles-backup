
home=/Users/corey
source=/Volumes/DataHD
folders=(Inbox Downloads Pictures Movies Musics Documents bin Cellar)

echo "This script will delete the following folders:"

# Print all folders
for folder in ${folders[@]}; do
  echo $home/$folder
done

read -p "Are you sure?[y/N] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
  cd $home &>/dev/null
  for folder in ${folders[@]}; do
    sudo rm -rf "$home/$folder"
    ln -vsf "$source/$folder"
  done
  cd - &>/dev/null
fi

