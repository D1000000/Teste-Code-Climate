  # coding: utf-8
######### DADO #########

Dado(/^(?:que |)(?:posso ver a|estou na|esteja na|naveguei até a) tela home Faz em casa$/) do
  @page = page(HomeFazEmCasaScreen).await(timeout: 5)
end

Dado(/^revise minha lista de produtos$/) do
  @page.touch_botao_revisar_itens_da_compra
end

######### QUANDO #########

Quando(/^(?:acessar|acessei|acesso) a opção de começar a comprar$/) do
  @page.touch_opcao_comecar_comprar
end

Quando(/^acessei a tela de Catálogo de produtos$/) do
  steps 'E acessar a opção de começar a comprar
         E posso ver a tela de Catálogo de produtos'
end

Quando(/^acessei a minha lista de compras mais recente$/) do
  steps 'E posso visualizar na tela a minha lista de compras mais recente'
  @page.touch_ultima_lista_compras
  steps 'E posso ver a lista de compras selecionada'
end

Quando(/^acessar a opção de ver todas as listas de compras$/) do
    @page.drag_until_element_is_visible(:baixo, @page.ver_todas_listas_compras)
    @page.touch_ver_todas_listas_compras
end

Quando(/^acessei a tela de Minhas listas$/) do
  steps 'E acessar a opção de ver todas as listas de compras
         E posso ver a tela de Minhas listas'
end

Quando(/^acessar a opção de criar uma nova lista de compras$/) do
  @page.drag_until_element_is_visible(:baixo, @page.criar_nova_lista_compras)
  @page.touch_criar_nova_lista_compras
end

Quando(/^criar uma nova lista de compras$/) do
  steps 'E acessar a opção de criar uma nova lista de compras
         E posso ver a lista de compras criada'
end

Quando(/^(?:acessar|acessei) a recompra da minha última compra realizada$/) do
  @page.drag_until_element_is_visible(:baixo, @page.botao_recomprar)
  @page.touch_botao_recomprar
end

Quando(/^navegue até a tela de detalhe da compra sem produtos disponíveis para recompra$/) do
  steps 'E estou na tela home Faz em casa
         E selecionar a opção de recompra'
  @page.drag_until_element_is_visible(:baixo, @page.secao_recompra)
  # @page.secao_recompra(@page.drag_for_specified_number_of_times(right.to_sym, 1.to_i))   #problemas no metodo right
  @page.touch_botao_recompra
  @page.wait_for_progress
end

Quando(/^eu acessar o catalogo de produtos através do banner$/) do
  @page.touch_botao_veja_produtos
  @page.wait_for_progress
end

######### ENTãO #########

Então(/^devo ser direcionado\(a\) para a tela 'Faz em casa'$/) do
  steps 'E posso ver a tela home Faz em casa'
end

Então(/^não devo visualizar a seção 'Mercado até você'$/) do
  fail if @page.banner_food_visible?
end

Então(/^posso voltar para a Home da aplicação 'Faz em casa'$/) do
  steps 'E posso ver a tela home Faz em casa'
end

Então(/^posso visualizar na tela as minhas últimas compras realizadas$/) do
  @page.drag_until_element_is_visible(:baixo, @page.card_recompra)
  fail unless @page.card_recompra_visible?
end

Então(/^posso visualizar na tela a minha lista de compras mais recente$/) do
  @page.drag_until_element_is_visible(:baixo, @page.ultima_lista_compras)
  @page.drag_to :baixo  ### mais um drag para o elemento ficar realmente visível na tela
  @page.ultima_lista_compras_visible?
end

Então(/^devo ver a opção de visitar o site do Carrefour$/) do
  fail unless @page.acesso_site_carrefour_visible?
end

Então(/^não devo visualizar na tela a seção de recompra$/) do
  fail if @page.secao_recompra_visible?
end

Então(/^devo visualizar o banner do programa food$/) do
  fail unless @page.banner_food_visible?
end
