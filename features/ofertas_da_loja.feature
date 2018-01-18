# coding: utf-8
# language: pt
Funcionalidade: Ofertas da loja 
  Eu como usuário carrefour desejo visualizar as ofertas da loja
   Para que ao selecionar a loja desejada, possa ver os detalhes de uma oferta.

  Cenário: O usuário pode ver as ofertas da loja selecionada
    Dado que naveguei até a tela de Ofertas de uma loja que tem ofertas disponíveis
    Então posso ver as ofertas disponíveis nessa loja

    @aguardando_implementacao
  Cenário: Devo ser informado(a) sobre a loja que não tem ofertas a serem exibidas
    Dado que naveguei até a tela de Ofertas de uma loja sem ofertas disponíveis
    Então posso ser informado(a) sobre a indisponibilidade de ofertas nesta loja
    
    @aguardando_implementacao
  Cenário: Posso ver os detalhes de uma oferta selecionada
    Dado que naveguei até a tela de Ofertas de uma loja que tem ofertas disponíveis
    Quando selecionar uma oferta
    Então posso ver a tela de detalhes da oferta selecionada

    @aguardando_implementacao
  Cenário: Estando na tela de detalhes de uma oferta, posso voltar para a tela 'Ofertas da loja'
    Dado que naveguei até a tela de Ofertas de uma loja que tem ofertas disponíveis    
    E navego até a tela de detalhe de uma oferta
    Quando selecionar a opção de voltar
    Então posso ver a tela de Ofertas da loja

    @teste_instrumentado
  Cenário: Ao acontecer uma falha durante a requisição na tela de Detalhes da oferta, o usuário pode ver uma mensagem a respeito e acessar a opção de tentar novamente
    Quando ocorrer alguma falha na requisição
    Então posso ser informado(a) a respeito
    E posso acessar a opção de 'tentar novamente'

    @aguardando_implementacao
  Cenário: Posso buscar por uma oferta específica e ver o resultado da busca
    Dado que naveguei até a tela de Ofertas de uma loja que tem ofertas disponíveis
    Quando buscar por uma oferta com resultados
    Então posso ver os resultados encontrados para a busca realizada

    @aguardando_implementacao
  Cenário: Ao buscar por uma oferta que não tem resultados encontrados, devo ser informado(a) a respeito
    Dado que naveguei até a tela de Ofertas de uma loja que tem ofertas disponíveis
    Quando buscar por uma oferta sem resultados
    Então devo ser informado(a) sobre a falta de resultados

    @teste_instrumentado
 Cenário: Ao acontecer uma falha durante a requisição na tela de Ofertas da loja, o usuário pode ver uma mensagem a respeito e acessar a opção de tentar novamente
   Quando ocorrer alguma falha na requisição
   Então posso ser informado(a) a respeito
   E posso acessar a opção de 'tentar novamente'
