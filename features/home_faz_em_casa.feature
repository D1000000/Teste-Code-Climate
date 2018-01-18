# coding: utf-8
# language: pt
Funcionalidade: Faz em casa 
  Esta funcionalidade refere-se a seção 'Faz em casa' no menu, por meio da qual o usuário tem acesso a serviços que pode fazer da sua própria casa, acessando o catálogo e realizando uma compra.

Cenário: O usuário pode acessar o catálogo de produtos
    Dado que navego até a tela de login
    E fornecer um cpf ja cadastrado
    E inserir uma senha valida
    E selecionar entrar
    Quando navegar até a home Faz em casa
    Então acesso o catálogo
    E acesso a opção de compra

  Cenário: O usuário visitante, ao acessar o catálogo, é direcionado para a tela de autenticação
    Dado que navego até a home Faz em casa
    Quando acesso a opção de compra
    Então posso visualizar a tela de autenticação de elegibilidade