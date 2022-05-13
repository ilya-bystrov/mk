##################################
Makeit: Bash-based Automation Tool
##################################

Features
========

* Bash as a language
* Shared context
* Target is defined as a bash function
* Targets can depend on others
* Multiple targets can be invoked
* Autocompletion support

Demo
====

.. raw:: html

   <embed>
   <a href="https://asciinema.org/a/Nvx7QOvUyMnZc8MVfKk2xETnj" target="_blank"><img src="https://asciinema.org/a/Nvx7QOvUyMnZc8MVfKk2xETnj.svg" /></a>
   <embed>

Getting Started
===============

1. Enable autocompletion 

.. code-block:: bash

  $ wget https://raw.githubusercontent.com/ilya-bystrov/makeit/master/completions/makeit_completions -O - >> ~/.bash_completion
  $ wget https://raw.githubusercontent.com/ilya-bystrov/makeit/master/completions/makeit_alias -O - >> ~/.bash_completion


2. Use template

.. code-block:: bash

  $ wget https://raw.githubusercontent.com/ilya-bystrov/makeit/master/makeit
  $ chmod u+x makeit
  $ makeit <Tab>
  bye hello
  $ makeit hello
  Hello, World!
  $ makeit bye
  bye-bye.

3. Customize ``makeit`` for your own needs

Concept
=======

* The key idea is iterating through arguments that corresponds to function names and invoking this functions
* Use the `template <https://raw.githubusercontent.com/ilya-bystrov/makeit/master/makeit>`_

  + By default
  
    - ``/usr/bin/env bash`` shebang
    - ``errexit``, ``pipefail``, ``nounset`` bash options
    
* Or build your own

Example
=======

docker-container-management
---------------------------

Requires ``docker`` installed

.. code-block:: bash

  $ cd makeit/examples/docker-container-management/makeit
  $ makeit build  # build 'someimage' docker image based on 'busybox'
  $ makeit run    # run 'someimage' image inside 'somecontainer' container 
  $ makeit rm     # remove 'somecontainer' container 
  $ makeit rmi    # remove 'someimage' image 

Improvements
============

Feel free to suggest `improvements <https://github.com/ilya-bystrov/makeit/issues>`_

Motivation
==========

Motivation is covered in `my post <https://ilya-bystrov.github.io/posts/makeit/makeit%3D.html#motivation>`_
