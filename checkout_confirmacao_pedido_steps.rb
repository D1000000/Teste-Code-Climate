# coding: utf-8
######### DADO #########

Dado(/^(?:que |)(?:posso ver a|estou na|esteja na) tela de confirmação do pedido realizado$/) do
  @page = page(CheckoutSucessoCompraScreen).await(timeout: 5)
end

######### QUANDO #########


######### ENTãO #########

Então(/^posso ver que o pedido foi realizado com sucesso$/) do
  steps 'E posso ver a tela de confirmação do pedido realizado'
end
