# coding: utf-8
# language: pt

Funcionalidade: Cadastro de usuário
  Eu, como usuário não cadastrado, necessito de informar meus dados de usuário para efetuar meu cadastro. Para a aplicação Android, todos os campos são obrigatórios. Para a aplicação iOS, os campos telefone e gênero são opicionais. Para Android, todos os campos são obrigatórios.

  Critérios de aceite:
  a) O usuário já cadastrado deve ser informado de fazer o login;
  b) Todos os campos do cadastro são obrigatórios;
  c) Se o usuário de iOS tentar seguir o cadastro sem preencher o campo, deve ser enviado ao Hybris o valor "outro";
  d) A regra de força de senha segue a mesma característica das demais aplicações;
  e) Trazer o optin de newsletter já marcado;
  f) enviar como tipo de telefone, de forma transparente pro usuário: Celular

  Os campos do formulário de cadastro são:
  - CPF
  - Nome
  - Sobrenome
  - CEP
  - Gênero
  - Data de nascimento
  - Celular
  - E-mail
  - Senha

  Contexto:
    Dado que navego até a tela de login
    Quando fornecer um CPF ainda não cadastrado
    E selecionar a opção de cadastro
    E inserir dados válidos de cadastro

  Cenário: Posso realizar meu cadastro utilizando uma senha forte
    E inserir uma senha forte
    E aceitar os Termos de uso
    Então finalizo o cadastro

  Cenário: Posso realizar o cadastro na aplicação, utilizando uma senha média
    E inserir uma senha media
    E aceitar os Termos de uso
    Então finalizo o cadastro
    
  Cenário: Não posso realizar o cadastro na aplicação utilizando uma senha fraca 
    E inserir uma senha fraca
    E aceitar os Termos de uso
    E finalizo o cadastro
    Então não realizo o cadastro visualizando a mensagem de alerta

    @teste_instrumentado
  Cenário: Por padrão, devo ver o checkbox de aceite de termos de uso desmarcado
    Dado que estou na tela de Cadastro
    Então posso ver que o checkbox de Termo de Uso está desmarcado

    @teste_instrumentado
  Cenário: Por padrão, devo ver o checkbox de recebimento de Newsletter selecionado
    Dado que estou na tela de Cadastro
    E posso ver que o checkbox de recebimento de Newsletter está selecionado

    @teste_instrumentado
  Cenário: Ao deixar de preencher algum campo obrigatório, devo ser informado(a) sobre a obrigatoriedade do campo
    Dado que estou na tela de Cadastro
    E deixo de preencher algum campo obrigatório
    Quando toco no botão de finalizar o cadastro
    Então devo ser informado(a) sobre a obrigatoriedade do campo

    @teste_instrumentado
  Cenário: Ao desabilitar o 'esconder senha', posso ver a senha digitada. Por padrão, o campo vem com a função de 'esconder senha' habilitada
    Dado que estou na tela de Cadastro
    E inserir uma senha na tela de Cadastro
    E posso ver a senha em modo escondido na tela de Cadastro
    Quando clicar na opção de ver a senha digitada na tela de Cadastro
    Então posso ver a senha que foi digitada na tela de Cadastro

    @teste_instrumentado
  Cenário: Se a data de nascimento inserida representar um usuário com menos de 18 anos, devo ver uma mensagem comunicando a obrigatoriedade de ter mais de 18 anos para usar a aplicação
    Dado que estou na tela de Cadastro
    Quando insiro dados válidos de cadastro, exceto data de nascimento
    E insiro uma Data de Nascimento, menor, na tela de Cadastro
    E marco o checkbox de Termos de uso
    E toco no botão de finalizar o cadastro
    Então posso ver uma mensagem de erro para o campo data

    @teste_instrumentado
  Cenário: Se a opção de “li e aceito os termos de uso” não estiver marcada e eu tocar em “entrar”, posso ver uma mensagem de erro comunicando que devo aceitar os termos
    Dado que estou na tela de Cadastro
    Quando insiro dados válidos de cadastro
    E posso ver que o checkbox de Termo de Uso está desmarcado
    E toco no botão de finalizar o cadastro
    Então posso ver uma mensagem de erro

    @teste_instrumentado
  Cenário: Ao tocar em “entrar”, se o formato do email for inválido, posso ver  uma mensagem de erro
    Dado que estou na tela de Cadastro
    Quando inserir dados válidos de cadastro, exceto e-mail
    E inserir e-mail inválido de acesso
    E marco o checkbox de Termos de uso
    E tocar no botão de finalizar o cadastro
    Então posso ver uma mensagem de erro para o campo email

    @teste_instrumentado
  Cenário: Ao tocar em “cadastrar”, se o email inserido já tiver sido cadastrado  anteriormente, posso ver uma mensagem de erro comunicando email já cadastrado
    Dado que estou na tela de Cadastro
    Quando inserir dados válidos de cadastro, exceto e-mail
    E inserir um Email, já cadastrado, na tela de Cadastro
    E marcar o checkbox de Termos de uso
    E tocar no botão de finalizar o cadastro
    Então posso ver uma mensagem de erro ao final do cadastro

    @teste_instrumentado
  Cenário: Ao inserir uma senha fraca, devo ver a indicação de senha fraca e uma mensagem a respeito
    Dado que estou na tela de Cadastro
    Quando inserir uma senha fraca na tela de Cadastro
    E tocar no botão de finalizar o cadastro
    Então devo ver a indicação de senha fraca
    E devo ver a mensagem sobre como deve ser a senha

    @teste_instrumentado
  Cenário: Ao inserir uma senha média, devo ver a indicação de senha média
    Dado que estou na tela de Cadastro
    Quando inserir uma senha média na tela de Cadastro
    Então devo ver a indicação de senha média

    @teste_instrumentado
  Cenário: Ao inserir uma senha forte, devo ver a indicação de senha forte
    Dado que estou na tela de Cadastro
    Quando inserir uma senha forte na tela de Cadastro
    Então devo ver a indicação de senha forte
