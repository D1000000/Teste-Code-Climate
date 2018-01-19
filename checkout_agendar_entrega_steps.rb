# coding: utf-8
######### DADO #########

Dado(/^(?:que |)(?:posso ver a|devo ver a|estou na|esteja na) tela de agendamento$/) do
  @page = page(CheckoutAgendarEntregaScreen).await(timeout: 5)
end

######### QUANDO #########

Quando(/^confirmar a seleção$/) do
  @page.drag_until_element_is_visible(:baixo, @page.botão_selecionar)
  @page.drag_to :baixo
  @page.touch_botão_selecionar
  @page.wait_for_progress
end

Quando(/^inserir uma observação$/) do
  @page.enter_campo_observação AGENDA_ENTREGA[:observação]
end

Quando(/^(?:que |)(?:efetuei|efetuar) um agendamento$/) do
  steps 'E que estou na tela de agendamento
         E que efetuei um agendamento da compra'
end

Quando(/^selecionar o período de entrega 'cedinho'$/) do
  @page.wait_for_progress
  @page.touch_card_periodo_cedinho
end

Quando(/^fechar o período de entrega 'cedinho'$/) do
  @page.wait_for_progress
  @page.touch_fechar_card_periodo_entrega
end

Quando(/^selecionar o período de entrega 'dia todo'$/) do
  @page.wait_for_progress
  @page.touch_card_periodo_dia_todo
end

Quando(/^selecionar um período de entrega(?: disponível|)$/) do
  @page.wait_for_progress
  @page.touch_periodo_disponivel
end

Quando(/^selecionar um outro período de entrega$/) do
  @page.wait_for_progress
  @page.touch_outro_periodo_disponivel
end

Dado(/^fechar o período de entrega escolhido$/) do
  @page.touch_fechar_periodo_disponivel
end

######### ENTãO #########

Então(/^devo ser direcionado\(a\) para o agendamento da entrega$/) do
  steps 'E posso ver a tela de agendamento'
end
