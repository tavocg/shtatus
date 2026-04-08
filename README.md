# shtatus

Simple shell status line generator in pure POSIX shell (almost).

## Usage

Run it continuously:

```sh
./shtatus
# 🔊 ━━━━━━━━──   🖥️  1%   🕘 09:35 AM   📅 Wed 2026-04-08
# 🔊 ━━━━━━━━──   🖥️  1%   🕘 09:35 AM   📅 Wed 2026-04-08
# 🔊 ━━━━━━━━──   🖥️  1%   🕘 09:35 AM   📅 Wed 2026-04-08
# ...
```

Print once for testing by passing any argument:

```sh
./shtatus 1
# 🔊 ━━━━━━━━──   🖥️  1%   🕘 09:35 AM   📅 Wed 2026-04-08
```

- You can customize the blocks with `SHTATUS_BLOCKS`
- The separator with `SHTATUS_SEPARATOR`
- And interval in seconds with `SHTATUS_INTERVAL`

```sh
SHTATUS_BLOCKS="cpu" ./shtatus # default is "vol cpu time date"
# 🖥️  1%
SHTATUS_SEPARATOR=" | " ./shtatus # default is "   "
# 🔊 ━━━━━━━━── | 🖥️  1% | 🕘 09:35 AM | 📅 Wed 2026-04-08
SHTATUS_INTERVAL=2      ./shtatus # default is 0.5
# takes longer
```

## Modules

| Module | What it does | Example output |
| --- | --- | --- |
| `vol` | Speaker volume bar or mute state. | `🔊 ━─────────` |
| `mic` | Microphone level bar or mute state. | `🎤 ━─────────` |
| `cpu` | Current CPU usage. | `🖥️ 10%` |
| `ram` | Used RAM in GiB. | `💾 03.2G` |
| `net` | Network link or Wi-Fi strength icon. | `📶` |
| `bat` | Battery level icon, with charging variants. | `🔋` |
| `kb` | Current keyboard layout. | `⌨️ us` |
| `time` | Current local time. | `🕙 10:24 AM` |
| `date` | Current local date. | `📅 Tue 2026-04-08` |

## Installation

```sh
curl -fsSL -o ~/.local/bin/shtatus raw.githubusercontent.com/tavocg/shtatus/refs/heads/main/shtatus
chmod +x ~/.local/bin/shtatus
```
