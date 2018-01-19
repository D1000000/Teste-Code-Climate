# coding: utf-8
require 'blabla'

######### DADO #########

Dado(/^(?:que |)(?:posso ver a|estou na|esteja na) tela de adicionar cartão para pagamento$/) do
  @page = page(AdicionarCartaoPagamentoScreen).await(timeout: 5)
end

######### QUANDO #########

Quando(/^(?:preencher|preenchi) os dados do pagamento corretamente para o cartão Carrefour$/) do
  steps 'E estou na tela de adicionar cartão para pagamento'
  @page.enter_número_ccarrefour CARTÃO_CARREFOUR[:número]
  @page.enter_nome_ccarrefour CARTÃO_CARREFOUR[:nome]
  @page.enter_data_venc_ccarrefour CARTÃO_CARREFOUR[:data_vencimento]
  @page.enter_codigo_seg_ccarrefour CARTÃO_CARREFOUR[:código_segurança]
end

Quando(/^(?:preencher|preenchi) os dados do pagamento corretamente para um cartão de crédito$/) do
  steps 'E estou na tela de adicionar cartão para pagamento'
  @page.enter_número_ccarrefour CARTÃO_VISA[:número]
  @page.enter_nome_ccarrefour CARTÃO_VISA[:nome]
  @page.enter_data_venc_ccarrefour CARTÃO_VISA[:data_vencimento]
  @page.enter_codigo_seg_ccarrefour CARTÃO_VISA[:código_segurança]
end

Quando(/^informar o número do cartão de crédito$/) do
  steps 'E estou na tela de adicionar cartão para pagamento'
  @page.enter_número_ccarrefour CARTÃO_VISA[:número]
end

Quando(/^informar o número do cartão Carrefour$/) do
  steps 'E estou na tela de adicionar cartão para pagamento'
  @page.enter_número_ccarrefour CARTÃO_CARREFOUR[:número]
end

Quando(/^informar o número de cartão inválido$/) do
  steps 'E estou na tela de adicionar cartão para pagamento'
  @page.enter_número_ccarrefour CARTÃO_VISA[:numero_invalido]
end

Quando(/^(?:selecionar|selecionei) a opção de ver os parcelamentos disponíveis$/) do
  steps 'E estou na tela de adicionar cartão para pagamento'
  @page.touch_parcelamento
  @page.wait_for_progress
end

Quando(/^(?:selecionar|selecionei) uma parcela$/) do
  @page.touch_parcela
  @page.wait_for_progress
end

Quando(/^confirmar as alterações realizadas$/) do
  steps 'E finalizar o pagamento'
end

######### ENTãO #########

Então(/^(?:posso |)(?:finalizar|finalizei) o pagamento$/) do
  @page.drag_until_element_is_visible(:baixo, @page.botão_finalizar)
  @page.touch_botão_finalizar
  @page.wait_for_progress
end

Então(/^não devo dar continuidade no preenchimento dos dados do cartão$/) do
  fail 'Foi possível continuar com o preenchimento dos dados do cartão indevidamente' if @page.nome_ccarrefour_field_visible?
end
