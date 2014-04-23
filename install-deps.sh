# up to you (me) if you want to run this as a file or copy paste at your leisure


# https://github.com/jamiew/git-friendly
# the `push` command which copies the github compare URL to my clipboard is heaven
#sudo bash < <( curl https://raw.github.com/jamiew/git-friendly/master/install.sh)
git clone git://github.com/jamiew/git-friendly.git ~/code/git-friendly

# https://github.com/rupa/z
# z, oh how i love you
mkdir -p ~/code/z
curl https://raw.github.com/rupa/z/master/z.sh > ~/code/z/z.sh
chmod +x ~/code/z/z.sh

# add this to the bash_profile file if it aint there.
#   . ~/code/z/z.sh

cd ~/code
git clone git://github.com/dronir/SpotifyControl.git
