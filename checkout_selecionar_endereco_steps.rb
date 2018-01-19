# coding: utf-8
######### DADO #########

Dado(/^(?:que |)(?:posso ver a|estou na|esteja na|devo ver a|posso voltar à) tela de seleção de endereço(?: de entrega|)$/) do
  @page = page(CheckoutSelecionarEnderecoScreen).await(timeout: 5)
end

Dado(/^que entrei na tela de cadastro de endereço$/) do
  steps 'E que estou na tela de seleção de endereço
         E selecionar a opção adicionar endereço'
end

######### QUANDO #########

Quando(/^(?:selecionar|selecionei) a opção adicionar endereço$/) do
  @page.wait_for_progress
  @page.touch_botão_adicionar
end

Quando(/^selecionei um endereço de entrega na lista$/) do
  @page.wait_for_progress
  @page.selecionar_endereço
end

Quando(/^(?:selecionar|selecione) um endereço elegível a entrega$/) do
  steps 'E que estou na tela de seleção de endereço
         E selecionei um endereço de entrega na lista'
  @page.wait_for_progress
end

Quando(/^(?:selecionar|selecionei) um endereço de entrega$/) do
  steps 'E que estou na tela de seleção de endereço
         E selecionei um endereço de entrega na lista'
  @page.wait_for_progress
end

Quando(/^(?:selecionar|selecionei) o endereço de cobrança$/) do
  steps 'E que estou na tela de seleção de endereço
         E selecionei um endereço de cobrança na lista'
  @page.wait_for_progress
end

Quando(/^selecionei um endereço de cobrança na lista$/) do
  @page.touch_endereco_cadastrado [0]
end

Quando(/^(?:selecionar|selecionei) a opção de editar um endereço de entrega$/) do
  steps 'E que estou na tela de seleção de endereço'
  @page.touch_opcao_editar
end

Quando(/^confirmar a exclusão$/) do
  @page.touch_confirmar_exclusao_endereco
end

######### ENTãO #########

Então(/^devo ser direcionado à tela de seleção de endereço$/) do
  steps 'E posso ver a tela de seleção de endereço'
end

Então(/^posso ver o novo endereço cadastrado$/) do
  steps 'E posso ver a tela de seleção de endereço'
  @page.wait_for_progress
  @page.drag_until_element_is_visible(:baixo, @outro_tipo_endereco)
end

Então(/^posso ver o endereço editado$/) do
  fail unless @page.posso_ver_endereco_cadastrado? @outro_tipo_endereco
end
