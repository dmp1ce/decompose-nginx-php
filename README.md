PHP-FPM/nginx website environment for Decompose intended to help developers quickly start a website. Because this project uses Docker instead of a virtual machine, the website is suitable for production as well as development and testing!

# Requirements

- [Decompose](https://github.com/dmp1ce/decompose)
- [Docker](http://www.docker.com/)
- [Docker Compose](http://docs.docker.com/compose/)

# Quick Start

``` bash
decompose --init https://github.com/dmp1ce/decompose-nginx-php.git
decompose build && decompose up
```
