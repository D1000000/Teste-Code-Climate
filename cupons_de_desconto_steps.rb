# coding: utf-8
######### DADO #########

Dado(/^(?:que |)(?:eu |)(?:posso ver a|estou na|esteja na|posso visualizar a) tela de (?:cupons de desconto|Meus cupons)$/) do
  @page = page(CuponsDeDescontoScreen).await(timeout: 5)
end

######### QUANDO #########

Quando(/^selecionar um cupom$/) do
  @page.touch_cupom
end

Quando(/^selecionar os cupons para utilizar$/) do
  @page.selecionar_varios_cupons
end

Quando(/^escolher usar os cupons selecionados$/) do
  @page.touch_botao_usar_cupons
end

Quando(/^cancelar a ação de uso dos cupons$/) do
  steps 'E que estou na tela de cupons de desconto'
  @page.touch_padrao_botao_voltar
end

######### ENTãO #########

Então(/^devo visualizar o código de barras do cupom$/) do
  fail 'Não foi possível visualizar o código de barras do cupom' unless @page.codigo_de_barras_visible?
end

Então(/^devo visualizar os códigos de barras dos cupons$/) do
  fail 'Não foi possível visualizar os códigos de barras dos cupons' unless @page.posso_ver_codigos_de_barras?
end

Então(/^devo voltar para a tela de cupons$/) do
  steps 'E posso ver a tela de cupons de desconto'
end

Então(/^devo visualizar os cupons selecionados$/) do
  fail 'Não foi possível ver os cupons selecionados' unless @page.posso_ver_cupons_selecionados?
end

Então(/^posso ver os cupons disponíveis$/) do
  fail unless @page.cupom_visible?
end

Então(/^posso ser informado\(a\) sobre a falta de cupons disponíveis$/) do
  @page.wait_for_progress
  fail unless @page.empty_state_visible?
end

Então(/^posso visualizar a tela detalhe do cupom$/) do
    steps 'E que estou na tela de cupons de desconto
           E devo visualizar o código de barras do cupom'
end
