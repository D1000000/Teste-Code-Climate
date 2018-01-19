# coding: utf-8
######### DADO #########

Dado(/^(?:que |)(?:posso ver a|estou na|esteja na) tela de busca de produtos$/) do
  @page = page(BuscarProdutosScreen).await(timeout: 5)
end

######### QUANDO #########

Quando(/^informar um produto cadastrado para busca$/) do
  @page = page(BuscarProdutosScreen).await(timeout: 5)
  @page.touch_campo_busca
  @page.enter_campo_busca BUSCAR_PRODUTO[:produto]
  @page.wait_for_progress
end

######### ENTãO #########

Então(/^posso ver o retorno da pesquisa$/) do
  @page.retornar_dados_visible?
end
