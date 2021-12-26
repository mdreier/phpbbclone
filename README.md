# phpbb-clone

This repository contains a Dockerfile to build a cloning runtime for the [phpbb3-static](https://github.com/automaciej/phpbb3-static) scripts. By installing all dependencies, it is much easier to execute.

## Building

Copy the file `config.php-example` to `config.php` and input your database configuration. Then build the docker container:

    docker build -t phpbbclone .

## Running

Enter the container to run the necessary steps. The workdir is `/work`, so you should map a volume to `/work/static` to capture the output.

    docker run --rm -it -v $PWD/static:/work/static phpbbclone /bin/bash
