# shstatus

Simple shell status line generator.

## Usage

Run it continuously:

```sh
./shstatus
```

Print once for testing by passing any argument:

```sh
./shstatus 1
```

- You can customize the blocks with `SHTATUS_BLOCKS`
- The separator with `SHTATUS_SEPARATOR`
- And interval in seconds with `SHTATUS_INTERVAL`

```sh
SHTATUS_BLOCKS="cpu"    ./shstatus # default is "vol cpu time date"
SHTATUS_SEPARATOR=" | " ./shstatus # default is "   "
SHTATUS_INTERVAL=2      ./shstatus # default is 0.5
```

## Installation

```sh
curl -fsSL -o ~/.local/bin/shtatus raw.githubusercontent.com/tavocg/shtatus/refs/heads/main/shtatus
chmod +x ~/.local/bin/shtatus
```
