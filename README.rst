amazon-website-robotframework
===============

Introdução
------------
Projeto de automação de website da amazon utilizando SeleniumLibrary no  `Robot Framework`_ , 
web site: amazon.com.br

Installation
------------

Install robotframework  pip_::
    
    pip install robotframework

Install library  pip_::

    pip install --upgrade robotframework-seleniumlibrary
   

Comandos 
------------
.. code:: bash

    robot -d ./Results amazon_testes_gherkin_bdd.robot 
    robot -d ./Results amazon_testes.robot
