# coding: utf-8
######### DADO #########

Dado(/^(?:que |)(?:posso ver a|estou na|esteja na) tela de Minhas listas$/) do
  @page = page(MinhasListasScreen).await(timeout: 5)
end


######### QUANDO #########

Quando(/^(?:selecionar|selecionei) a opção de criar uma nova lista de compras$/) do
  @page.touch_opcao_criar_nova_lista
  @page.wait_for_progress
end

Quando(/^(?:selecionar|selecionei) uma lista de compras na listagem$/) do
  @page.touch_item_lista_de_compras
  @page.wait_for_progress
end

Quando(/^(?:selecionar|selecionei) uma lista de compras sem itens na listagem$/) do
  @page.touch_lista_compras_vazia
  @page.wait_for_progress
end

Dado(/^criei uma nova lista de compras$/) do
  steps 'E selecionar a opção de criar uma nova lista de compras
         E estou na tela de lista de compras
         E renomear a lista de compras
         E selecionar a opção de voltar
         E posso ver a tela de Minhas listas'
end

Quando(/^(?:selecionar|selecionei) a primeira lista de compras na listagem$/) do
  @page.selecionar_primeira_lista
  @page.wait_for_progress
end

Quando(/^(?:naveguei|navegar) até a tela de uma lista de compras$/) do
  steps 'E posso ver a tela de Minhas listas
         E selecionar a opção de criar uma nova lista de compras
         E estou na tela de lista de compras'
end

######### ENTãO #########

Então(/^posso ver a opção de criar uma nova lista de compras$/) do
  @page.opcao_criar_nova_lista_visible?
end

Então(/^posso ver a listagem das minhas listas já criadas$/) do
  @page.listagem_listas_criadas_visible?
end

Então(/^posso ver a lista de compras criada sem autenticação$/) do
  steps 'E selecionar a primeira lista de compras na listagem
         E estou na tela de lista de compras'
  @page.posso_ver_lista_criada_visitante? @nome_lista_compras
end
