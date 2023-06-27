# manpages

[SLE Micro](https://www.suse.com/products/micro/) does not install man pages to save space. This repo provides a container image with the man pages and the man binary.


```
alias man='podman run -it --rm --net none --cap-drop ALL ghcr.io/djoreilly/manpages:main man'

## podman v4.5.1 - much faster with transient storage
alias man='podman run -it --net none --cap-drop ALL --transient-store --log-driver=none ghcr.io/djoreilly/manpages:main man'
```
