# coding: utf-8
######### DADO #########

Dado(/^(?:que) (?:acesse a|posso acessar a|esteja na|estou na) tela de revisão dos itens para recompra$/) do
  @page = page(RecompraScreen).await(timeout: 5	)
  @page.touch_card_recompra
end
######### QUANDO #########
Quando(/^selecionar a opção de recompra$/) do
  @page.drag_until_element_is_visible(:baixo, @page.secao_recompra)
  # perform_action('drag', 90, 30, 90, 90, 30)
  @page.touch_botao_recompra
  @page.wait_for_progress
end
Dado(/^(?:que) (?:acesse a|posso acessar a|esteja na|estou na) tela de revisão dos itens para recompra$/) do
  @page = page(RevisaoDoPedidoScreen).await(timeout: 5)
end

Quando(/^selecionar a opção de continuar a compra$/) do
@page.touch_botao_continuar_compra
end

######### ENTãO #########

Então(/^posso ver os produtos na bandeja$/) do
 	fail "Produto não visivei na bandeja" unless @page.produto_na_bandeja_visible?
end

Então(/^posso prosseguir para a bandeja de produtos$/) do
end

Então(/^posso ser informado\(a\) sobre a quantidade em estoque ultrapassada para o produto$/) do
end