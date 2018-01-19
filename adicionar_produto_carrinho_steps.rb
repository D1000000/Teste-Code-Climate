# coding: utf-8
######### DADO #########

Dado(/^(?:que |)(?:eu |)(?:posso ver a|estou na|esteja na) tela de adição do produto$/) do
  @page = page(ListarProdutoScreen).await(timeout: 5)
end


Dado(/^adicionei um produto ao carrinho$/) do
  steps 'E que estou na tela de menu
         E que navegue até a tela de busca de produtos
         E que estou na tela de busca de produtos
         E informar um produto cadastrado para busca
         E selecionar a opção de adicionar um produto ao carrinho
         E definir as informações sobre o produto
         E posso adicionar esse produto ao meu carrinho
         E que estou na tela de menu
         E que acessei a home
         E posso visualizar esse produto no meu carrinho
         E que estou na tela do meu carrinho
         E selecionar a opção comprar'
  @page.wait_for_progress
end

######### QUANDO #########

Quando(/^definir as informações sobre o produto$/) do
  steps 'E que estou na tela de adição do produto'
  @page.touch_botão_mais_qtde
end

Quando(/^cancelar a adição do produto ao carrinho$/) do
  @page.touch_botão_cancelar
end

######### ENTãO #########

Então(/^posso adicionar esse produto ao (?:meu |)carrinho$/) do
  steps 'E que estou na tela de adição do produto'
  @page.wait_for_progress
  @page.touch_botão_confirmar
end

Então(/^posso visualizar esse produto no (?:meu |)carrinho$/) do
  @page.wait_for_progress
  @page.touch_botão_carrinho
end
