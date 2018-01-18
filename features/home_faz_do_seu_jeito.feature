# coding: utf-8
# language: pt
Funcionalidade: Faz do seu jeito
  Essa funcionalidade correspondente ao item 'Faz do seu jeito' no menu da aplicação, por meio da qual o usuário terá acesso a serviços oferecidos pelo Carrefour: Cartão Carrefour, Site Carrefour, Programa de descontos, Canais de atendimento, FAQ e Sobre o APP. O usuário poderá visualizar suas últimas compras realizadas na aplicação, assim como acessar o seu histórico de compras.

  A opção FAQ só é exibida para usuários com acesso à seção 'Mercado até você'

    ### Banner com chamada para cadastro/login para usuário visitante
  Cenário: Posso realizar meu login por meio da chamada de marketing na Home
    Dado que naveguei até a tela 'Faz do seu jeito'
    Quando acessar a chamada de marketing para autenticação
    Então posso realizar login na aplicação

  Cenário: Posso realizar meu cadastro por meio da chamada de marketing
    Dado que naveguei até a tela Faz do seu jeito
    Quando acessar a chamada de marketing para autenticação
    E fornecer um CPF ainda não cadastrado
    E selecionar a opção de cadastro
    E inserir dados válidos de cadastro
    E inserir uma senha forte
    E aceitar os Termos de uso
    Então finalizo o cadastro

    ### acesso ao histórico de compras
    @aguardando_implementacao
  Cenário: O usuário pode acessar a seção Minhas compras
    Dado que efetuei o login com o usuário que tem histórico de compras
    E que naveguei até a tela Faz do seu jeito
    Quando selecionar a opção de acesso a Minhas compras
    Então posso visualizar a tela de Minhas compras

    @aguardando_implementacao
  Cenário: O usuário pode ver suas duas últimas compras
    Dado que efetuei o login com o usuário que tem histórico de compras
    E que naveguei até a tela Faz do seu jeito
    Então posso visualizar na tela as minhas duas últimas compras realizadas

    @aguardando_implementacao
  Cenário: O usuário pode ver o estado vazio caso não tenha compras em seu histórico
    Dado que efetuei o login com o usuário sem histórico de compras
    E que navegue até a tela Faz do seu jeito
    Então devo ser informado(a) que ainda não tenho compras para serem exibidas

    ### navegação Canais de atendimento
  Cenário: Posso acessar canais de atendimento
    Dado que naveguei até a tela Faz do seu jeito
    Quando acessar a opção de card de canais de atendimento
    Então posso visualizar a tela de canais de atendimento

    ### acesso ao Cartão Carrefour
  Cenário: O usuário pode ver a opção de acesso ao Cartão Carrefour
    Dado que naveguei até a tela Faz do seu jeito
    Então posso ver a opção de acesso ao Cartão Carrefour

    @teste_instrumentado
  Cenário: O usuário deverá ser direcionado para a aplicação do Cartão Carrefour, caso já a tenha instalada no seu dispositivo
    Dado que naveguei até a tela 'Faz do seu jeito'
    E acessei a opção de abrir a aplicação do Cartão Carrefour
    Então devo ser direcionado(a) para a aplicação do Cartão Carrefour

    @teste_instrumentado
  Cenário: O usuário deverá ser direcionado para a Loja de Aplicativos da sua respectiva plataforma, caso não tenha a aplicação do Cartão Carrefour instalada no seu dispositivo
    Dado que naveguei até a tela 'Faz do seu jeito'
    E acessei a opção de baixar a aplicação do Cartão Carrefour
    Então devo ser direcionado(a) para a Loja de Appps da minha plataforma na página do Cartão Carrefour

    #### Faz online
    @teste_instrumentado
  Cenário: O usuário pode acessar o site do Carrefour
    Dado que naveguei até a tela 'Faz do seu jeito'
    Quando acessar a opção de visitar o site do Carrefour
    Então devo ser direcionado(a) para o site do Carrefour

    @aguardando_implementacao
  Cenário: O usuário autenticado pode acessar o site do Carrefour
    Dado que me autentiquei na aplicação
    E que naveguei até a tela 'Faz do seu jeito'
    Então devo ver a opção de visitar o site do Carrefour

    @aguardando_implementacao
  Cenário: O usuário visitante pode acessar o site do Carrefour
    Dado que naveguei até a tela 'Faz do seu jeito'
    Então devo ver a opção de visitar o site do Carrefour

    ####acesso ao programa de descontos
  Cenário: O usuário pode acessar a seção de informações sobre o Programa de descontos
    Dado que naveguei até a tela Faz do seu jeito
    E que navego até a tela de login
    Quando aciono o login da aplicacao
    E informo a senha
    E finalizo o login
    E selecionar a opção de acesso às informações sobre o Programa de descontos
    Então posso visualizar a tela de informações sobre o Programa de descontos

  Cenário: O usuário pode acessar a seção de informações sobre o Programa de descontos como visitante
    Dado que naveguei até a tela Faz do seu jeito
    Quando selecionar a opção de acesso às informações sobre o Programa de descontos
    Então posso visualizar a tela de informações sobre o Programa de descontos

  Cenário: Ao acessar a seção do Programa de descontos, o usuário pode voltar para a tela 'Do seu jeito'
    Dado que naveguei até a tela Faz do seu jeito
    Quando selecionar a opção de acesso às informações sobre o Programa de descontos
    E selecionar a opção de voltar
    Então posso ver a tela home Faz do seu jeito

    ### navegação Sobre o App
  Cenário: Posso acessar informações Sobre o App com usuário visitante
    Dado que naveguei até a tela Faz do seu jeito
    Quando acessar a opção de ver as informações Sobre o App
    Então posso visualizar a tela de informações Sobre o App

    ### acesso FAQ
  Cenário: Posso acessar informações de FAQ com usuário autenticado(a) na aplicação e com acesso ao 'Mercado até você'
    Dado que naveguei até a tela Faz do seu jeito
    Quando acessar a opção de FAQ
    Então posso visualizar a tela de informações de FAQ

    ####Testes unitários instrumentados
    @teste_instrumentado
  Cenário: Deve-exibir o primeiro nome do usuário logado
    Dado que me autentiquei na aplicação
    E que naveguei até a tela 'Faz do seu jeito'
    Então devo ver meu primeiro nome

    @teste_instrumentado
  Cenário: Deve-exibir o dia da semana, a data da última compra realizada pelo usuário pelo APP e o status
    Dado que efetuei o login com o usuário que tem histórico de compras relaizadas pela aplicação
    E que naveguei até a tela 'Faz do seu jeito'
    Então devo ver a data de realização da compra
    E posso ver o dia da semana
    E devo ver o status desse pedido

    @teste_instrumentado
  Cenário: Deve-exibir o texto 'Hoje' para a compra realizada pelo usuário pelo APP no dia atual e o status
    Dado que efetuei o login com o usuário que tem histórico de compras relaizadas pela aplicação
    E que naveguei até a tela 'Faz do seu jeito'
    Então devo ver a data de realização da compra como 'Hoje'
    E devo ver o status desse pedido

    @teste_instrumentado
  Cenário: Deve-exibir o texto de identificação 'Mercado até você' e o valor da compra realizada pelo APP
    Dado que efetuei o login com o usuário que tem histórico de compras relaizadas pela aplicação
    E que naveguei até a tela 'Faz do seu jeito'
    Então devo ver o texto de identificação 'Mercado até você'
    E devo ver o valor da compra realizada
