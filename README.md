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

You can limit the blocks with `SHSTATUS_BLOCKS`. For example, CPU only:

```sh
SHSTATUS_BLOCKS="cpu" ./shstatus
```
