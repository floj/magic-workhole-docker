# magic-wormhole-docker
<a href="https://github.com/floj/magic-wormhole-docker/blob/master/LICENSE">
  <img alt="License: MIT" src="https://img.shields.io/badge/license-MIT-yellow.svg" target="_blank" />
</a>

Wraps magic wormhole in a thin docker container

## :rocket: Usage

Invoke either by calling the [wormhole](wormhole) shell script from this repo like

```sh
./wormhole receive 1-file-send
```

or add an alias to your `.bashrc`/`.zshrc` like

```sh
alias wormhole='docker run --rm -ti --add-host "$(hostname):127.0.0.1" --network=host -v "$(pwd):/app" -e "SU_UID=$(id -u)" -e "SU_GID=$(id -g)" floj/magic-wormhole wormhole'
```

## :boom: Caveats
- `send` can only send files from the current directory and relative subdirs of the current directory (due to volume mapping into docker container).
- `receive` can only write files to the current directory and relative subdirs of the current directory (due to volume mapping into docker container).
