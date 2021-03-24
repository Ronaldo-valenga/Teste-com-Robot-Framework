***Settings***
Documentation       Aqui temos o mapeamento dos elementos e localizadores

***Variables***
# Signup
${CAMPO_NOME}       id:name 
${CAMPO_EMAIL}      id:email
${CAMPO_SENHA}      id:password
${BOTAO_CADASTRAR}  id:register

${CAMPO_OBRIGATORIO_NOME}       O campo Nome é obrigatório.
${CAMPO_OBRIGATORIO_EMAIL}      O campo E-mail é obrigatório.
${CAMPO_OBRIGATORIO_SENHA}      O campo Senha é obrigatório.
${base_url}     http://prova.stefanini-jgr.com.br/teste/qa/
${Validação}    Formulário
${Titulo}       Cadastro de usuários
${nome}         João da Silva
${email}        email@exemplo.com
${senha}        12345678
${nome_incompleto}      Joao
${email_incorreto}       email.exemplo.com
${senha_incompativel}       1234567
${primeiro_nome}      Por favor, insira um nome completo.
${email_invalido}       Por favor, insira um e-mail válido.
${mensagem_senha_nao_compativel}  A senha deve conter ao menos 8 caracteres.
${nome_usuario2}        Roberto Carlos da Silva
${email_usuario2}       robertinho.carlos@email.com
${senha_usuario2}        87654321
# DASHBOARD


***Keywords***

Dado que acesso a página principal
    Go to   ${base_url}  

Quando valido o nome da pagina
    Title Should Be     ${Titulo} 
Então estou na pagina correta
    Page Should Contain     ${Validação} 

Quando submeto o meu nome "${EMPTY}"

    
    Input Text          ${CAMPO_EMAIL}      ${email}
    Input password      ${CAMPO_SENHA}      ${senha}
    click element   ${BOTAO_CADASTRAR}             
    

Então devo ver a mensagem de campo nome obrigadorio
    Page Should Contain     ${CAMPO_OBRIGATORIO_NOME}

Quando submeto meu email "${EMPTY}"

    Input Text          ${CAMPO_NOME}      ${nome} 
    Input password      ${CAMPO_SENHA}      ${senha}
    click element   ${BOTAO_CADASTRAR}  

Então devo ver a mensagem de campo email obrigadorio
    Page Should Contain     ${CAMPO_OBRIGATORIO_EMAIL}

Quando submeto minha senha "${EMPTY}"

    Input Text          ${CAMPO_NOME}      ${nome}
    Input Text          ${CAMPO_EMAIL}      ${email}
    click element   ${BOTAO_CADASTRAR} 

Então devo ver a mensagem de campo senha obrigadorio
    Page Should Contain     ${CAMPO_OBRIGATORIO_SENHA}



Clicar no BOTAO_CADASTRAR
    click element   ${BOTAO_CADASTRAR}

Então devo ver mensagem dos campos obrigadorio
    Page Should Contain     ${CAMPO_OBRIGATORIO_NOME} 
    Page Should Contain     ${CAMPO_OBRIGATORIO_EMAIL}
    Page Should Contain     ${CAMPO_OBRIGATORIO_SENHA}

Quando submeto um nome nome incompleto

    Input Text          ${CAMPO_NOME}       ${nome_incompleto}      
    Input Text          ${CAMPO_EMAIL}      ${email}
    Input password      ${CAMPO_SENHA}      ${senha}
    click element   ${BOTAO_CADASTRAR} 

Então devo ver a mensagem de nome incompleto

    Page Should Contain     ${primeiro_nome}

Quando submeto um email incorreto

    Input Text          ${CAMPO_NOME}       ${nome}    
    Input Text          ${CAMPO_EMAIL}      ${email_incorreto}
    Input password      ${CAMPO_SENHA}      ${senha}
    click element   ${BOTAO_CADASTRAR}

Então devo ver a mensagem para inserir um email valido

    Page Should Contain        ${email_invalido} 

Quando submeto uma senha senha incompativel

    Input Text          ${CAMPO_NOME}       ${nome}    
    Input Text          ${CAMPO_EMAIL}      ${email}
    Input password      ${CAMPO_SENHA}      ${senha_incompativel}
    click element   ${BOTAO_CADASTRAR}

Então devo ver a mensagem que a senha deve conter no minimo 8 caracteres

    Page Should Contain     ${mensagem_senha_nao_compativel}  

quando cadastro o primeiro usuario
    
    Input Text          ${CAMPO_NOME}      ${nome}
    Input Text          ${CAMPO_EMAIL}      ${email}
    Input password      ${CAMPO_SENHA}      ${senha}
    click element       ${BOTAO_CADASTRAR}
    Page Should Contain     1

E cadastro o segundo usuario
    Input Text          ${CAMPO_NOME}      ${nome_usuario2}
    Input Text          ${CAMPO_EMAIL}      ${email_usuario2}
    Input password      ${CAMPO_SENHA}      ${senha_usuario2}
    click element       ${BOTAO_CADASTRAR}
    Set Focus To Element       id:tdUserId2

Então o segundo usuario deve conter o id2 
    Page Should Contain     2

e excluir usuario
    click element      id:removeUser2
e validar se usuario 2 foi excluido
    Page Should Contain     2








    
    














    