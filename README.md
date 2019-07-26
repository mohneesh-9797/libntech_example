# libutils example

## Instructions

### Download

```
$ git clone https://github.com/olehermanse/libutils_example.git
$ cd libutils_example
$ git submodule init
$ git submodule update
```

### Build dependency

```
$ cd libutils
$ git fetch --all --tags
$ ./autogen.sh
$ make -j32
```

### Build examples

```
$ ./autogen.sh
$ make -j32
```
