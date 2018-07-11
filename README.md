ghostwriter
========

This is a fork of [ghostwriter](https://github.com/wereturtle/ghostwriter). A markdown writer for linux, windows and macOS, made by [wereturtle](https://github.com/wereturtle).

You should use his repo instead of this one.


## Structure of this repository

I moved each library used by ghostwriter to its own submodule, to keep track of upstream changes (if any).

I'm using my own [temporary fork of ghostwriter](https://github.com/pazos/ghostwriter/tree/modular) to make the changes needed for this to build. Keep in mind that my idea is to merge progress (if any) to upstream sources.

## Build from source

One of the focus of this repo is being able to build ghostwriter with gcc/clang across different OSes, and never touch MVSC or **any other non FOSS compiler.**

The steps to build ghostwriter from this repo assume that you have installed both a C++ compiler and Qt5.4+ in your system.

##### 1. Clone this repo, including submodules

```bash
git clone --recursive https://github.com/pazos/ghostwriter-modular
```

##### 2. Build libraries and application on a separate folder

```bash
cd ghostwriter-modular
mkdir build
cd build
qmake ..
make
```


##### 3. (Optional) Create a redistributable application bundle

This is needed if you wish to redistribute the application to other systems that hasn't Qt or other system libraries installed. Most of the time you'll need this on Windows and MacOS, but not on Linux.

*Note:* you can also create redistributable applications on linux using linuxdeployqt.

```bash
make deploy
```