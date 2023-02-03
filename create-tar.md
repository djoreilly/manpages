# Steps to create the tar file

The SLE Micro ISO does not have the `coreutils-doc` rpm that provides man pages for commands like `ls`. So download it with zypper on a SLES/Leap system.

```
$ sudo mount SLE-Micro-5.3-DVD-x86_64-Beta2-Media1.iso slem-mnt
$ mkdir tar-src
$ cd tar-src

$ find ../slem-mnt -name *rpm -exec bash -c "rpm2cpio \"{}\" | cpio --extract --make-directories \"./usr/share/man/*\"" \;

$ sudo zypper install -y --download-only coreutils-doc
$ find /var/cache -name coreutils-doc*rpm -exec bash -c "rpm2cpio \"{}\" | cpio --extract --make-directories \"./usr/share/man/*\"" \;

$ tar -zcf slemicro53-manpages.tar.gz usr/

```
