# coding: utf-8
require 'blabla'

######### DADO #########

Dado(/^(?:que |)estou na tela de voucher$/) do
  @page = page(VoucherScreen).await(timeout: 5)
end

######### QUANDO #########

Quando(/^insiro um cupom válido$/) do
  steps 'E que estou na tela de voucher'
  @page.touch_campo_digitar_voucher_field
  @page.wait_for_progress
  @page.enter_campo_digitar_voucher VOUCHER[:desconto]
  @page.touch_botao_aplicar
  @page.wait_for_progress
end

######### ENTãO ########