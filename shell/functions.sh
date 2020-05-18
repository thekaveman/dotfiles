# Create a data URL from a file
dataurl() {
  local MIMETYPE=$(file --mime-type "$1" | cut -d ' ' -f2)
  if [[ $MIMETYPE == "text/*" ]]; then
    MIMETYPE="${MIMETYPE};charset=utf-8"
  fi
  echo "data:${MIMETYPE};base64,$(openssl base64 -in "$1" | tr -d '\n')"
}

# Update dotfiles
dfu() {
  cd ~/.dotfiles && git pull --ff-only && ./install -q
}

# Show disk usage of current folder, or list with depth
duf() {
  du --max-depth=${1:-0} -c | sort -r -n | awk '{split("K M G",v); s=1; while($1>1024){$1/=1024; s++} print int($1)v[s]"\t"$2}'
}

# Fuzzy find file/dir
ff() { find . -type f -iname "*$1*";}
fd() { find . -type d -iname "*$1*";}

# Get named var (usage: get "VAR_NAME")
get() {
  echo "${!1}"
}

# Create a new directory and enter it
mk() {
  mkdir -p "$@" && cd "$@"
}

# Add to path
prepend-path() {
  [ -d $1 ] && PATH="$1:$PATH"
}

# Switch long/short prompt
ps0() {
  unset PROMPT_COMMAND
  PS1='$ '
}

ps1() {
  source "$DOTFILES_DIR"/shell/prompt.sh
}
