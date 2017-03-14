PHP Build Tools
=============================

This repo:
- Downloads PHP .phar tools 
- Installs  PHP .phar tools
- Provides extras for phing 

Phing Extras
------------

Can be found inside the `phing` directory


PHP PHAR tools
--------------

Downloads and optionally installs to local:

- box
- composer
- pdepend
- phing
- phpab
- phpcbf
- phpcov
- phpcpd
- phpcs
- phpdoc
- php-cs-fixer (v1.13.1)
- php-cs-fixer-v2 (latest)
- phpdox
- phploc
- phpmd
- phpunit
- sami

```bash
git clone https://github.com/laradic/php-build-tools
cd php-build-tools

# Downloads the latest releases and put's em in the "bin" directory
./tools-download.sh

# Installs all tools to /usr/local/bin
./tools-install-local.sh /usr/local/bin
```
