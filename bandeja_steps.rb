# coding: utf-8
######### DADO #########

Dado(/^(?:que |)(?:posso ver a|estou na|esteja na|devo ver a|posso voltar para a) bandeja de produtos$/) do
  @page = page(BandejaScreen).await(timeout: 5)
end

Dado(/^que revise os itens da minha compra alterando o (?:agendamento|parcelamento)$/) do
  steps 'E alterar a quantidade do produto na bandeja'
  3.times do
    steps 'E selecionar a opção de alterar a quantidade do produto na bandeja'
  end
  @page.wait_for_progress
  #steps 'E posso ver que o valor total da compra foi alterado na minha bandeja'
end

######### QUANDO #########

Quando(/^selecionar a opção de (?:excluir|remover) o (?:último |)produto$/) do
  steps 'E posso ver a bandeja de produtos'
  @page.touch_opcao_excluir_produto
  @page.wait_for_progress
end

Quando(/^(?:selecionar|selecione) a opção de comprar$/) do
  steps 'E posso ver a bandeja de produtos'
  @page.touch_opcao_comprar
end

Quando(/^selecionar a opção de fechar a bandeja$/) do
  @page.touch_opcao_fechar_bandeja
  @page.wait_for_progress
end

Quando(/^(?:selecionar|seleciono) a opção de exibir categorias$/) do
  @page.touch_opcao_exibir_categorias
  @page.wait_for_progress
end

Quando(/^desligar a opção de exibir categorias$/) do
  @page.touch_opcao_exibir_categorias
  @page.wait_for_progress
end

Quando(/^remover todos os produtos$/) do
  ###Foram adicionado 2 produtos à bandeja
  steps 'E selecionar a opção de excluir o produto
         E selecionar a opção de excluir o produto'
end

Quando(/^(?:selecionar|selecione) a opção de alterar a quantidade do produto na bandeja$/) do
  ###altera para mais a quantidade do produto
  @qtde_inicial = @page.get_qtde_produto
  @page.touch_opcao_aumentar_qtde
  @wait_for_progress
end

Quando(/^(?:selecionar|selecione) a opção de diminuir a quantidade do produto na bandeja$/) do
  @page.touch_opcao_diminuir_qtde
  @wait_for_progress
end

Quando(/^alterar a quantidade do produto na bandeja$/) do
  steps 'E selecionar a opção de alterar a quantidade do produto na bandeja
         E selecionar a opção principal no popup
         E posso ver a quantidade do produto alterada na bandeja
         E posso ver que o valor total da compra foi alterado na minha bandeja'
end

Quando(/^voltar para a tela de revisão do pedido$/) do
  steps 'E selecionar a opção de fechar a bandeja
         E posso ver a tela de revisão do pedido'
end

Quando(/^(?:cancelar a ação|cancelo o abandono da compra)$/) do
  steps 'E selecionar a opção de cancelar no popup'
end

Quando(/^confirmo o abandono da compra$/) do
  steps 'E selecionar a opção principal no popup'
end

Quando(/^aumento a quantidade de um produto acima do limite permitido por compra$/) do
  20.times do
  @page.touch_opcao_aumentar_acima_do_limite
end
sleep 20
end

Quando(/^aumento a quantidade de um produto acima do limite disponível em estoque$/) do
  20.times do
  @page.touch_opcao_aumentar_acima_do_limite_produtos
end
sleep 20
end

######### ENTãO #########

Então(/^posso ver a bandeja vazia$/) do
  steps 'E posso ver a bandeja de produtos'
  fail unless @page.bandeja_vazia_visible?
end

Então(/^posso ver(?: que|) o produto(?: está|) na(?: minha|) bandeja$/) do
  steps 'E posso ver a bandeja de produtos'
  fail unless @page.produto_visible?
end

Então(/^(?:devo|posso) ver que o produto foi removido da minha bandeja$/) do
  steps 'E posso ver a bandeja de produtos'
  fail if @page.produto_visible?
end

Então(/^posso ver que (?:a quantidade do produto foi alterada|o valor total da compra foi alterado) na minha bandeja$/) do
  steps 'E posso ver a bandeja de produtos'
  fail unless @page.posso_ver_total_compra_atualizado? @valor_bandeja
end

Então(/^(?:devo ver os produtos listados na minha bandeja|posso ver a bandeja com os produtos)$/) do
  fail unless @page.lista_produtos_visible?
  steps 'E posso ver o produto na minha bandeja'
end

Então(/^devo ver os produtos organizados por categorias$/) do
  fail unless @page.categoria_produtos_visible?
end

Então(/^devo ver os produtos numa listagem única$/) do
  fail if @page.categoria_produtos_visible?
end

Então(/^posso ver a quantidade do produto alterada na bandeja$/) do
  fail unless @page.posso_ver_qtde_produto_alterada? @qtde_inicial
end

Então(/^devo ver que a quantidade do produto permanece sem alteração$/) do
  fail if @page.posso_ver_qtde_produto_alterada? @qtde_inicial
end

Então(/^posso ser informado\(a\) sobre o abandono da compra$/) do
  steps 'E posso ver um popup na tela'
  fail unless @page.posso_ver_abandono?
end

Então(/^posso ver o produto já adicionado à bandeja$/) do
    fail "Produto não visível na bandeja" unless @page.produto_ja_add_na_bandeja
end

Então(/^posso ver o mesmo produto da recompra adicionado ao item já contido na bandeja$/) do
    fail "Produto não visível na recompra" unless @page.produto_ja_add_na_bandeja_e_recompra
end

Então(/^posso ser informado\(a\) sobre a quantidade limite ultrapassada para o produto$/) do
    @page.touch_mensagem_limite_produto
end

