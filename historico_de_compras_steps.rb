# coding: utf-8
######### DADO #########

Dado(/^(?:que |)(?:eu |)(?:posso ver a|estou na|esteja na|posso visualizar a) tela de (?:Minhas compras|histórico de compras)$/) do
  @page = page( HistóricoDeComprasScreen).await(timeout: 5)
end

Dado(/^navego até a tela de detalhe de uma compra$/) do
   steps 'E posso ver a tela de Minhas compras
          E selecionar uma compra realizada na listagem
          E posso ver a tela de detalhe da compra'
end

######### QUANDO #########

Quando(/^selecionar uma compra realizada na listagem$/) do
  steps 'E posso ver a tela de Minhas compras'
  @page.touch_compra_realizada
end

Quando(/^(?:selecionar|selecionei|seleciono) a compra em andamento$/) do
  steps 'E posso ver a tela de Minhas compras'
  @page.touch_compra_andamento
end

Dado(/^seleciono uma compra realizada pela aplicação$/) do
  steps 'E posso ver a tela de Minhas compras'
  @page.touch_compra_realizada_online
end

######### ENTãO #########

Então(/^(?:posso ver o meu histórico de compras|^posso ver minhas compras realizadas)$/) do
  steps 'E posso ver a tela de Minhas compras'
  fail unless @page.compra_visible?
end

Então(/^posso ver a tela padrão para o histórico de compras vazio$/) do
  steps 'E posso ver a tela de Minhas compras'
  fail unless @page.empty_state_visible?
end

Então(/^posso ser informado sobre meu histórico de compras vazio$/) do
  steps 'E posso ver a tela padrão para o histórico de compras vazio'
end

Então(/^posso ver minhas compras em andamento$/) do
 steps 'E posso ver a tela de Minhas compras'
 fail unless @page.compra_andamento_visible?
end

Então(/^posso voltar para a tela de Minhas compras$/) do
  steps 'E posso ver a tela de Minhas compras'
end
