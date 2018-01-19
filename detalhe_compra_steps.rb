# coding: utf-8
######### DADO #########

Dado(/^(?:que |)(?:eu |)(?:posso ver a|estou na|esteja na|posso visualizar a) tela de detalhe da compra$/) do
  @page = page(DetalheCompraScreen).await(timeout: 5)
end

######### QUANDO #########

Quando(/^selecionar a opção de esclarecimento de dúvidas$/) do
  steps 'E posso ver a tela de detalhe da compra'
  @page.touch_opcao_faq
end

######### ENTãO #########

Então(/^posso ver a tela de detalhes da compra selecionada$/) do
  steps 'E posso ver a tela de detalhe da compra'
end
