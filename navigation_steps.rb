# coding: utf-8

######### STEPS DE NAVEGAÇÃO #########

Dado(/^que navegue até a tela de seleção de endereço$/) do
  steps 'E que autentiquei no sistema
         E que estou na tela de seleção de endereço'
end

Dado(/^(?:que |)(?:eu |)(?:naveguei|navegue|navegar) até a tela do meu carrinho$/) do
  steps 'E que estou na tela de menu
         E que acessei a home
         E acessar o carrinho de compras'
end

Dado(/^(?:que |)(?:eu |)(?:naveguei|navegue|navegar) até a tela do meu carrinho vazio$/) do
  steps 'E que eu navegue até a tela do meu carrinho'
end

Dado(/^(?:que |)(?:naveguei|navegue|navegar) até a tela de localização$/) do
  steps 'E que estou na tela de menu
         E que acessei a localização'
end

Dado(/^(?:que |)(?:naveguei|navegue|navegar) até a tela de busca$/) do
  steps 'E que estou na tela de menu
         E que acessei a busca'
end

Dado(/^(?:que |)(?:naveguei|navegue|navegar) até a tela de busca de produtos$/) do
  steps 'E que estou na tela de menu
         E que acessei a busca
         E que estou na tela de categoria
         E selecionar a opção de busca'
end

Dado(/^(?:que |)(?:naveguei|navegue|navegar) até a tela home$/) do
  steps 'E que estou na tela de menu
         E que acessei a home'
end

Dado(/^que naveguei até a tela de listagem de produtos$/) do
  steps 'E que estou na tela de menu
          E que acessei a busca
          E estou na tela de busca de produtos
          E informar um produto cadastrado para busca'
end

Dado(/^que ao navegar até a tela de cupons$/) do
  steps 'E que estou na tela de menu
         E que acessei meu Carrefour
         E que eu esteja na tela de Login
         E fornecer credenciais válidas de acesso
         E posso efetuar meu login
         E estou na tela de menu
         E acessar a opção de ver os cupons de desconto
         E posso ver a tela de cupons de desconto'
end

Dado(/^que (?:eu navegue|ao navegar) até a tela de exibição de produtos$/) do
  steps 'E que estou na tela de menu
         E acessar a busca
         E que estou na tela de categoria
         E selecionar uma categoria'
end

Dado(/^(?:que |)(?:naveguei|navegue|navegar) até a tela de exibição de produtos$/) do
  steps 'E que estou na tela de menu
         E que acessei a busca
         E estou na tela de busca de produtos
         E informar um produto cadastrado para busca'
end

Dado(/^(?:que |)(?:naveguei|navegar|navego) até a tela de Minhas listas$/) do
  steps 'E que estou na tela de menu
          E acessei o item \'Minhas listas\'
          E que estou na tela de Minhas listas'
end

Dado(/^que (?:ao navegar|naveguei|navegue) até a tela de login$/) do
  steps 'E posso ver a tela home Faz na loja
         E selecionei a opção de acesso a Minha conta
         E posso ver a tela de login'
end

Dado(/^que (?:naveguei|navegue|navego) até a tela home da aplicação$/) do
  steps 'E que estou na tela de menu
          E acessei a home \'Faz na loja\'
          E que estou na tela home da aplicação'
  @page.wait_for_progress
end

Dado(/^que (?:naveguei|navegue|navego) até a tela (?:Home da aplicação |)\'Faz na loja\'$/) do
  steps 'E que estou na tela de menu
         E acessei a home \'Faz na loja\'
         E que estou na tela home Faz na loja'
end

Dado(/^(?:que |)(?:naveguei|navegue|navego) até a tela \'Faz em casa\'$/) do
  steps 'E que estou na tela de menu
          E acessei a home \'Faz em casa\'
          E que estou na tela home Faz em casa'
  @page.wait_for_progress
end

Dado(/^que (?:naveguei|navegue|navego) até a tela 'Faz do seu jeito'$/) do
  steps 'E que estou na tela de menu
          E acessei a home \'Faz do seu jeito\'
          E que estou na tela home Faz do seu jeito'
  @page.wait_for_progress
end

Dado(/^que (?:naveguei|navegue) até a tela de 'Categorias de produto'$/) do
  steps 'E que estou na tela de menu
          E acessei a home \'Faz em casa\'
          E eu acessar o catalogo de produtos através do banner'
end

Dado(/^que navego até a tela de autenticação por meio da home da aplicação$/) do
  steps 'E que estou na tela home da aplicação
         E selecionei a opção de acesso a Minha conta
         E posso ver a tela de login'
end

Dado(/^que (?:naveguei|navegue|navego) até a tela Scan de preço$/) do
  steps 'E estou na tela home \'Faz na loja\'
         E selecionar a opção de leitor de preço'
  @page.wait_for_progress
end

Dado(/^(?:que |)(?:naveguei|navegue|navego) até a tela de revisão do meu pedido$/) do
  steps 'E que navegue até a tela de \'Categorias de produto\'
    E posso ver que tenho produto na minha bandeja
    E acesse a minha bandeja de produtos
    E selecione a opção de comprar
    E que esteja na tela de seleção de endereço
    E selecione um endereço elegível a entrega
    E efetue o agendamento da minha compra
    E estou na tela de adicionar cartão para pagamento
    E preencher os dados do pagamento corretamente para um cartão de crédito
    E selecionar um parcelamento disponível
    Então posso finalizar o pagamento
    E devo acessar a tela de revisão do pedido'
end

Dado(/^que naveguei até a tela de ofertas da loja$/) do
  steps 'E busco pela loja
        E ativo a localização
        E escolho a loja'
end

Dado(/^que naveguei até a tela de revisão do pedido$/) do
  steps 'E estou na tela home \'Faz na loja\'
    E que efetuei o login com o usuário que tem histórico de compras realizadas
    E naveguei até a tela \'Faz em casa\'
    E eu acessar o catalogo de produtos através do banner
    E adiciono um produto a minha bandeja
    E acesse a minha bandeja de produtos
    E selecione a opção de comprar
    E que esteja na tela de seleção de endereço
    E selecione um endereço elegível a entrega
    E efetue o agendamento da minha compra
    E acesse a tela de pagamento
    E selecionei a opção de utilizar outro cartão
    E preencher os dados do pagamento corretamente para o cartão Carrefour
    E posso finalizar o pagamento
    E devo acessar a tela de revisão do pedido'
end