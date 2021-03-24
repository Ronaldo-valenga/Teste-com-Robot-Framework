***Settings***

Library     SeleniumLibrary

Resource    base.robot
Test Setup  Open session
Test Teardown   Close session
***Test Cases***

Validar acesso a tela precipal 
    Dado que acesso a página principal
    Quando valido o nome da pagina
    Então estou na pagina correta

Validar nome não infromado
    Dado que acesso a página principal
    Quando submeto o meu nome "${EMPTY}"
    Então devo ver a mensagem de campo nome obrigadorio

Validar email não infromado
    Dado que acesso a página principal
    Quando submeto meu email "${EMPTY}"
    Então devo ver a mensagem de campo email obrigadorio
    
Validar senha não informada
    Dado que acesso a página principal
    Quando submeto minha senha "${EMPTY}"
    Então devo ver a mensagem de campo senha obrigadorio


Validar campos vazios
    Dado que acesso a página principal
    Clicar no BOTAO_CADASTRAR
    Então devo ver mensagem dos campos obrigadorio

Validar campo nome completo
    Dado que acesso a página principal
    Quando submeto um nome nome incompleto
    Então devo ver a mensagem de nome incompleto

Validar campo email
    Dado que acesso a página principal
    Quando submeto um email incorreto
    Então devo ver a mensagem para inserir um email valido

Validar campo senha incompativel
    Dado que acesso a página principal
    Quando submeto uma senha senha incompativel
    Então devo ver a mensagem que a senha deve conter no minimo 8 caracteres

Validar cadastro de usuario
    Dado que acesso a página principal
    quando cadastro o primeiro usuario
    E cadastro o segundo usuario
    Então o segundo usuario deve conter o id2 

Realizar exclusão de um usuario
    Dado que acesso a página principal
    quando cadastro o primeiro usuario
    Então o segundo usuario deve conter o id2 
    E cadastro o segundo usuario
    e validar se usuario 2 foi excluido












    