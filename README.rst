amazon-website-robotframework
===============


# Amazon.com.br
- CT Acesso ao menu "Eletrônicos"
- CT Pesquisa de um Produto

Installation
------------

Install robotframework  pip_::
    
    pip install robotframework

Install library  pip_::

    pip install --upgrade robotframework-seleniumlibrary
   

Comandos 
------------

Execução BDD 
- robot -d ./Results amazon_testes_gherkin_bdd.robot 

Execução Testes procedurais
- robot -d ./Results amazon_testes.robot
