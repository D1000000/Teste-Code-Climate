# coding: utf-8
######### DADO #########

Dado(/^(?:que |)(?:posso ver a|estou na|esteja na|acesse a) tela de (?:pagamento|listagem de cartões salvos)$/) do
  @page = page(CheckoutFormaPagamentoScreen).await(timeout: 5)
end

######### QUANDO #########

Quando(/^(?:que |)(?:selecionei|selecionar) uma forma de pagamento$/) do
  steps 'E selecionei o meio de pagamento cartão de crédito
         E preenchi os dados do pagamento corretamente
         E selecionei um parcelamento disponível
         E finalizei o pagamento'
end

Quando(/^(?:selecionar|selecionei) a opção de utilizar outro cartão$/) do
  steps 'E estou na tela de pagamento'
  @page.drag_until_element_is_visible(:baixo, @page.opcao_utilizar_outro_cartao)
  @page.touch_opcao_utilizar_outro_cartao
  @page.wait_for_progress
end

Quando(/^alterar o cartão para pagamento$/) do
  steps 'E estou na tela de pagamento
         E selecionar o campo de escolha da forma de pagamento
         E defini o cartão como Carrefour
         E preencher os dados do pagamento corretamente
         E selecionar um parcelamento disponível'
end

######### ENTãO #########
