alias resource='source ~/.bashrc'

function find-replace {
	ack-grep --print0 -irl '$1' | xargs -0 -L1 sed  -i 's/$1/$2/g'
}

alias batstat='upower -i $(upower -e | grep 'BAT') | grep -E "state|to\ full|percentage"'

alias untar='tar -zxvf '

alias speedtest='speedtest-cli --simple'

alias ipext='curl ipinfo.io/ip'

# Thanks to: https://github.com/lukechilds
get_latest_release() {
  curl --silent "https://api.github.com/repos/$1/releases/latest" | # Get latest release from GitHub api
    grep '"tag_name":' |                                            # Get tag line
    sed -E 's/.*"([^"]+)".*/\1/'                                    # Pluck JSON value
}
