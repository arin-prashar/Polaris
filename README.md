# osdev64
An attempt at osdev and make a unix like kernel and probably a microkernel
# How to build?
Get yourself a copy of [limine](https://github.com/limine-bootloader/limine/tree/v2.0-branch-binary) and [stivale](https://github.com/stivale/stivale)

Build a x86_64-elf-gcc compiler then

```sh
make
# Builds the project

make image
# Makes a hard drive image
```

To clean use
```sh
make clean
# Cleans the project
```
# How to run?
The kernel is 64-bit so run it with
```sh
qemu-system-x86_64 -hda d.img -m 512M
```
# What is implemented so far?
- [x] Long mode
- [x] Graphical mode
- [x] Interrupts
- [x] Timer
- [x] Paging
- [x] ACPI
- [x] HPET  
