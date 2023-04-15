amazon-website-robotframework
===============

![image](https://user-images.githubusercontent.com/86740236/232250840-be190ae0-c701-4296-8d7f-3c8dd3648a95.png)

Amazon.com.br
------------
![image](https://user-images.githubusercontent.com/86740236/232254424-a23dce30-c7c0-4553-a9f1-76f28c32683d.svg)


Introdução
------------
Projeto de automação com framework Robot e utilizando library da SeleniumLibrary.

Installation
------------

Install robotframework  pip_::
    
    pip install robotframework

Install library  pip_::

    pip install --upgrade robotframework-seleniumlibrary
   
   

Comandos 
------------
Execução file de test bdd e salvando na pasta result

    robot -d ./Results amazon_testes_gherkin_bdd.robot 
    
Execução file de test e salvando na pasta result

    robot -d ./Results amazon_testes.robot
