*** Settings ***
Library     SeleniumLibrary
 
*** Variables ***
${URL}                          https://lrssplx.github.io/CampoTreinamento/
${NAVEGADOR}                    chrome
${TITULO_PAGINA}                Campo de Treinamento
${NOME}                         Larissa
${SOBRENOME}                    Pereira
${TELEFONE}                     99999
 

${CAMPO_NOME}                   id:formNome
${CAMPO_SOBRENOME}              id:formSobrenome
${CAMPO_TELEFONE}               id:formtelefone
${BOTAO_CAD_USUARIO}             id:formCadastrar
 
*** Keywords ***
Acessar Página Principal
    Open Browser        ${URL}  ${NAVEGADOR}
    Maximize Browser Window
    Sleep               1
    Title Should Be     ${TITULO_PAGINA}
 
Inserir Nome Completo
    Wait Until Element Is Enabled   ${CAMPO_NOME}
    Input Text                    ${CAMPO_NOME}     ${NOME}   
 
Inserir Sobrenome
    Wait Until Element Is Enabled   ${CAMPO_SOBRENOME}
    Input Text                      ${CAMPO_SOBRENOME}  ${SOBRENOME}    
 
Inserir Telefone
    Wait Until Element Is Enabled   ${CAMPO_TELEFONE}
    Input Text                      ${CAMPO_TELEFONE}   ${TELEFONE}   
 

 
Submeter Cadastro
    Wait Until Element Is Enabled   ${BOTAO_CAD_USUARIO}
    Sleep                           1
    Click Element         ${BOTAO_CAD_USUARIO}
 
   
