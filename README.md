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

You can limit the blocks with `SHTATUS_BLOCKS`. For example, CPU only:

```sh
SHTATUS_BLOCKS="cpu" ./shstatus
```

## Installation

```sh
curl -fsSL -o ~/.local/bin/shtatus raw.githubusercontent.com/tavocg/shtatus/refs/heads/main/shtatus
chmod +x ~/.local/bin/shtatus
```
