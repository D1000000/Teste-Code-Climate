# coding: utf-8
######### DADO #########

Dado(/^(?:que |)(?:posso ver a|estou na|esteja na) tela de categoria$/) do
  @page = page(BuscarCategoriasScreen).await(timeout: 5)
end

######### QUANDO #########

Quando(/^selecionar uma categoria de produto$/) do
  steps 'E estou na tela de categoria'
  @page.touch_categoria
  @page.wait_for_progress
end

Quando(/^selecionar uma sub categoria$/) do
  @page.selecionar_subcategoria_nivel1
end

Quando(/^selecionar a opção de busca$/) do
  @page.touch_botão_buscar_produto
end

######### ENTãO #########

Então(/^posso ver a\(s\) sub categoria\(s\)$/) do
  fail unless @page.visualizar_subcategoria_nivel1?
end

Então(/^devo visualizar o catálogo de produtos$/) do
  steps 'E estou na tela de categoria'
  fail unless @page.layout_name_visible?
end