######
makeit
######

Bash file for defining multiple actions using bash-functions and launching them (with autocompletion support).

.. raw:: html

   <embed>
   <a href="https://asciinema.org/a/Nvx7QOvUyMnZc8MVfKk2xETnj" target="_blank"><img src="https://asciinema.org/a/Nvx7QOvUyMnZc8MVfKk2xETnj.svg" /></a>
   <embed>

Hello, World!
=============

Put `makeit` file in the directory, `makeit` should be executable, completion support is installed (otherwise 
use `./makeit`).
Type in bash shell:

.. code-block:: bash

  $ makeit hello
  Hello, World!
  $ makeit bye
  bye-bye.

Creating `makeit` file
======================

* For every new `makeit` file you **must copy** bottom lines of `makeit` file (`while` loop),
* Also I suggest to use `/usr/bin/env bash` shebang and `errexit`, `pipefail`, `nounset` bash options but it's 
  not required.

Completion installation
=======================

* Alias and completion function together allow to type `makeit<space><tab>` and get completion list (similar 
  to `make<space><tab>`)
* I suggest to put configuration (alias and completion functions) into user specific `~/.bash_completion` file 
  using `install` script.

Example
=======

docker-container-management
---------------------------

You can find an example (requires `docker` installed) in `examples/docker-container-management/makeit`.
You can run it with the following commands (suggest that alias is created overwise use `./makeit`)

.. code-block:: bash

  $ makeit build  # build simple docker image
  $ makeit run    # run container 
  $ makeit rm     # remove container 
  $ makeit rmi    # remove image 


Motivation
==========

I've regularly found myself creating bash scripts with names like `build`, `run`, `clear` for every project.
Typically, these scripts should share some variables and I'd had to duplicate them or use other techniques 
(env variables, source common script).
I wasn't satisfied with such approaches.

Also, I used `Makefile`-s. Specifically, I liked the completion feature.
But `Makefile` has its own features, that were not convenient for me: Makefile syntax, every line is executed 
separately, additional configuration, etc.

For my purposes, I wanted to have a single file that contains bash scenarios with the ability to share common variables and functions, and with autocomplete feature in order to launch them easily.

Thanks
======

Feel free to provide improvements, examples, etc.