# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

# init z   https://github.com/rupa/z
. ~/code/z/z.sh

# Set up nodenv and defaults
export PATH="$HOME/.nodenv/bin:$PATH"
export NODENV_VERSION="v0.10"

#Set up rbenv and defaults
export RBENV_VERSION="2.1.1"

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Prefer UK English and use UTF-8
export LC_ALL= LANG=en_US.UTF-8

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults

export PATH=/opt/local/bin:/opt/local/sbin:$PATH

source /opt/boxen/env.sh

