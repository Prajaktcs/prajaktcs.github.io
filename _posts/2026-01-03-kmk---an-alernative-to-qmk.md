---
layout: post
title: "KMK - An Alternative to QMK"
date: 2026-01-03 18:57:48 -0500
categories: keyboards hardware
---

Today I learned about KMK firmware after accidentally buying a Raspberry Pi Pico 2 for a keyboard project, only to discover that QMK doesn't support it yet.

## The Problem

I purchased a Raspberry Pi Pico 2 (RP2350) to build a custom keyboard, assuming QMK support would be ready. Unfortunately, QMK doesn't yet support the RP2350 chip that powers the Pico 2. Rather than waiting for support or buying different hardware, I needed an alternative.

## The Solution: KMK

KMK is a keyboard firmware written in CircuitPython that works perfectly with the Raspberry Pi Pico 2. Since it runs on CircuitPython rather than compiled C, it supports any microcontroller that CircuitPython supports - including the newer RP2350.

## Why KMK Works for This

**No Compilation Needed**: KMK is just Python code that runs on the device. You edit `.py` files directly on the mounted drive - no build environment, no flashing, no waiting for upstream support.

**CircuitPython Compatibility**: As long as CircuitPython supports your hardware, KMK will work. The Raspberry Pi Pico 2 has excellent CircuitPython support.

**Immediate Iteration**: Change your keymap, save the file, and it reloads instantly. Perfect for experimenting with layouts.

## Trade-offs to Consider

**Performance**: Python has more overhead than compiled C, so there may be slightly higher latency compared to QMK.

**Features**: QMK has more advanced features and a larger ecosystem of community keymaps and modules.

**Community Size**: QMK has a much larger community, though KMK's community is active and helpful.

## Getting Started

For the Raspberry Pi Pico 2:
1. Install CircuitPython on the Pico 2
2. Copy the KMK firmware files to the mounted drive
3. Create your `main.py` with your keymap configuration
4. Done!

What started as a purchasing mistake turned into discovering a more flexible approach to keyboard firmware. Sometimes the detour leads somewhere interesting.

**Resources**:
- [KMK Firmware GitHub](https://github.com/KMKfw/kmk_firmware)
- [CircuitPython for Raspberry Pi Pico 2](https://circuitpython.org/board/raspberry_pi_pico_2/)

