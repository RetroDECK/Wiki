# Moonlight - General Guide

W.I.P


## Usage

`moonlight [options] stream <host> "<app>"`

- `stream` - Start streaming.
- `host` - Host name, UUID, or IP address.
- `app` - Application to stream.


Starts streaming a specified application directly from the host.

---

## Options

**Audio**

- `--audio-config <stereo|5.1-surround|7.1-surround>` - Audio configuration.
- `--audio-on-host` / `--no-audio-on-host` - Enable/disable host audio.
- `--mute-on-focus-loss` / `--no-mute-on-focus-loss` - Mute audio on focus loss.

**Display**

- `--display-mode <borderless|fullscreen|windowed>` - Display mode.

**Input & Controllers**

- `--absolute-mouse` / `--no-absolute-mouse` - Absolute mouse mode.
- `--background-gamepad` / `--no-background-gamepad` - Background gamepad input.
- `--capture-system-keys <always|fullscreen|never>` - System key capture behavior.
- `--mouse-buttons-swap` / `--no-mouse-buttons-swap` - Swap mouse buttons.
- `--multi-controller` / `--no-multi-controller` - Multiple controller support.
- `--reverse-scroll-direction` / `--no-reverse-scroll-direction` - Invert scroll direction.
- `--swap-gamepad-buttons` / `--no-swap-gamepad-buttons` - Swap A/B and X/Y buttons.
- `--touchscreen-trackpad` / `--no-touchscreen-trackpad` - Touchscreen trackpad mode.

**Resolution**

- `--1080` - 1920×1080
- `--1440` - 2560×1440
- `--4K` - 3840×2160
- `--720` - 1280×720
- `--resolution <width>x<height>` - Custom resolution.

**Session Behavior**

- `--game-optimization` / `--no-game-optimization` - Game optimizations.
- `--keep-awake` / `--no-keep-awake` - Prevent display sleep during streaming.
- `--quit-after` / `--no-quit-after` - Quit app after session.

**Video & Performance**

- `--bitrate <kbps>` - Video bitrate.
- `--fps <fps>` - Frames per second.
- `--frame-pacing` / `--no-frame-pacing` - Enable/disable frame pacing.
- `--hdr` / `--no-hdr` - Enable/disable HDR.
- `--packet-size <bytes>` - Video packet size.
- `--performance-overlay` / `--no-performance-overlay` - Show/hide performance overlay.
- `--video-codec <AV1|H.264|HEVC|auto>` - Video codec.
- `--video-decoder <auto|hardware|software>` - Video decoder.
- `--vsync` / `--no-vsync` - Enable/disable V-Sync.
- `--yuv444` / `--no-yuv444` - Enable/disable YUV 4:4:4 sampling.

---

