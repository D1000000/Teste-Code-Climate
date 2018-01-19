# coding: utf-8
######### DADO #########

Dado(/^(?:que |)(?:posso ver a|estou na|esteja na) tela de detalhe do produto$/) do
  @page = page(DetalheDoProdutoScreen).await(timeout: 5)
end

######### QUANDO #########

Quando(/^selecionar a opção de adicionar o produto à bandeja$/) do
  steps 'E que estou na tela de detalhe do produto'
  @page.touch_botao_adicionar
  @page.wait_for_progress
end

Quando(/^selecionar a minha bandeja de produtos a partir do detalhe do produto$/) do
  steps 'E que estou na tela de detalhe do produto'
  @page.touch_bandeja
end

######### ENTãO #########

Então(/^posso ver a tela de detalhes da oferta selecionada$/) do
	steps 'E estou na tela de detalhe do produto'
   fail unless @page.visualizar_detalhe_visible?
end