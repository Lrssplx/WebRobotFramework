*** Settings ***
Resource    ResourceTest.robot
Test Teardown   Close Browser
*** Test Cases ***
Validar Cadastro de Usuário: Email Válido
    Acessar Página Principal
    Inserir Nome Completo
    Inserir Sobrenome
    Inserir Telefone
    Submeter Cadastro
   
 