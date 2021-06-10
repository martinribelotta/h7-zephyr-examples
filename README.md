# Zephyr projects and examples for varios h7 boards

This repository contains the required scripts to start zephyr OS projects for varios stm32h7 boards, examples and corresponding board support packages.

## Supported boards

 - Generic stm32h750vbt6 board: Work in progress
 - stm32h750 dragonnman h7: TODO
 - h730/733 Duino: TODO

## Examples
 - Basic blinking: Done.
 - Terminal shell: TODO
 - Ethernet network: TODO
 - RS485 network: TODO
 - CAN example: TODO
 - USB Device: TODO
 - USB Host: TODO


## Howto start

### Install python

In linux the system normally provide a python installation, in windows, you can go and download from python.org

Don't forgett to add python to the system PATH.

### Install west toolchain

In a terminal type:

```bash
python -m pip install west
```

### Install zephyr SDK

Download and install last zephyr SDK from https://github.com/zephyrproject-rtos/sdk-ng/releases

### Download or clone this repo

Download or clone this repository:

```bash
git clone https://github.com/martinribelotta/h7-zephyr-examples.git
```

Next, open terminal in project and do this command:

```bash
west init && west update
```

Or if you have make


```bash
make init
```


### Build project

For build project you can do:

```bash
west build blinky -DBOARD_ROOT=$PWD
```

Or if you have a makefile:

```bash
make build
```

### Flash board:

For flash project in the board do:

```bash
west build flash
```

Or if you have a makefile:

```bash
make flash
```
