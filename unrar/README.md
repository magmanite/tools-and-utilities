# Unrar
Unrar in Docker, so you don't have to install any other libraries or software.

To use the image:
```
docker run --rm -it -v "${pwd}":/source  -w /source magmanite/unrar unrar x <RAR file>
```

Or use the shell script found in this repo.
The shell script pass all arguments to unrar executable inside Docker container:
```
unrar x <RAR file>
```

## Details
- *Name*: Unrar
- *License*: Custom - see LICENSE.txt
- *Resources*
  - [RAR Lab Offical Website](https://www.rarlab.com/)
  - [Alpine Linux unrar package](https://pkgs.alpinelinux.org/package/edge/main/x86/unrar)

## Changelog
- **2021.04.02**
  - Update to use Aline linux 3.13.4
- **3.11**
  - Update to use alpine 3.11, and update tag to use alpine's tag.
- **1.0**
  - Initial, use alpine 3.9.
