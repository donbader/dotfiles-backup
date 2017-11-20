brew cask install osxfuse
brew install ntfs-3g

echo "Make sure that you have execute \"$ csrutil disable\" in Recovery mode"

sudo mv "/Volumes/Macintosh HD/sbin/mount_ntfs" "/Volumes/Macintosh HD/sbin/mount_ntfs.orig"
sudo ln -s /usr/local/sbin/mount_ntfs "/Volumes/Macintosh HD/sbin/mount_ntfs"

