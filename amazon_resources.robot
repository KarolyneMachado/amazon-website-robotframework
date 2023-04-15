*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}            chrome
${URL}                https://www.amazon.com.br
${LOGO_VALIDATION}             //a[@aria-label='Amazon.com.br']
${MENU_ELETRONICOS}            //a[contains(@data-csa-c-content-id,'electronics')]
${HEADER_ELETRONICOS}          //h1[contains(.,'Eletrônicos e Tecnologia')]
${BUSCA_XBOX}                  //span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'Xbox Series S - Pacote Fortnite, Rocket League e Fall Guys')]


*** Keywords ***
Abrir o navegador
    Open Browser    browser=${BROWSER}
    Maximize Browser Window
    
Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site Amazon.com.br                                                           
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${LOGO_VALIDATION}
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}

Entrar no menu "Eletrônicos"
    Click Element    locator=${MENU_ELETRONICOS}

Verificar se aparece a frase "${FRASE}"
    Wait Until Page Contains         text=${FRASE} 
    Wait Until Element Is Visible    locator=${HEADER_ELETRONICOS} 

Verificar se o título da página fica "${TITULO}"
    Title Should Be    title=${TITULO}

Verificar se aparece a categoria "${NOME_CATEGORIA}" 
    Element Should Be Visible    locator=//img[@alt='${NOME_CATEGORIA}'] 

Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
    Input Text    locator=//input[@id='twotabsearchtextbox']    text=${PRODUTO}

Clicar no botão de pesquisa 
    Click Element    locator=nav-search-submit-button             

Verificar o resultado da pesquisa, se está listando o produto ${PRODUTO}     
    Wait Until Element Is Visible    locator=(//span[contains(.,${PRODUTO})])[2]

# GHERKIN STEPS 
Dado que estou na home page da Amazon.com.br
    Acessar a home page do site Amazon.com.br
    Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
Quando acessar o menu "Eletrônicos"
    Entrar no menu "Eletrônicos"
Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
## precisa esperar waint

E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    Verificar se aparece a frase "Eletrônicos e Tecnologia"

E a categoria "Computadores e Informática" deve ser exibida na página
    Verificar se aparece a categoria "Computadores e Informática"

Quando pesquisar pelo produto "Xbox Series S"
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa    
    Clicar no botão de pesquisa

Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
     Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}
    Verificar se o título da página fica "Amazon.com.br : Xbox Series S"
    
E um produto da linha "Xbox Series S" deve ser mostrado na página
    Verificar o resultado da pesquisa, se está listando o produto "Console Xbox Series S"

