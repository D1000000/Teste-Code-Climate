# coding: utf-8
######### DADO #########

Dado(/^(?:que |)(?:posso ver a|estou na|esteja na) tela home Faz do seu jeito$/) do
  @page = page(HomeFazDoSeuJeitoScreen).await(timeout: 5)
end

#pode utilizar este step na home para acessar o leitor
# Dado(/^que acesse a opção de Leitor de preço$/) do
#   @page.touch_card_scan
# end

######### QUANDO #########

Quando(/^(?:que |)(?:acessar|acessei) a opção de card de ofertas$/) do
  @page.touch_card_ofertas
end

Quando(/^(?:que |)(?:acessar|acessei) a opção de card de lojas$/) do
  @page.touch_card_lojas
  @page.wait_for_progress
end

Quando(/^(?:que |)(?:acessar|acessei) a opção de card de scan de preço$/) do
  steps'E que estou na tela de Mais Carrefour'
  @page.touch_card_scan
end

Quando(/^(?:que |)(?:acessar|acessei) a opção de card de canais de atendimento$/) do
  @page.drag_until_element_is_visible(:baixo, @page.card_canais_atendimento)
  @page.touch_card_canais_atendimento
end

Quando(/^(?:que |)(?:acessar|acessei) a opção de ver as informações Sobre o App$/) do
  @page.drag_to :baixo
  @page.touch_card_sobre_app
end

Quando(/^que acessei a tela de canais de atendimento$/) do
  steps 'E acessei a opção de card de canais de atendimento
         E posso ver a tela de canais de atendimento'
end

Quando(/^que acessei a tela de informações Sobre o App$/) do
  steps 'E acessei a opção de ver as informações Sobre o App
         E posso ver a tela de informações Sobre o App'
end

Quando(/^(?:selecionar|seleciono|selecionei) a opção de acesso a Minhas compras$/) do
  @page.drag_until_element_is_visible(:baixo, @page.acesso_minhas_compras)
  @page.touch_acesso_minhas_compras
  @page.wait_for_progress
end

Quando(/^(?:selecionar|selecionei) a opção de acesso às informações sobre o Programa de benefícios$/) do
  steps 'E estou na tela home Faz do seu jeito'
  @page.drag_until_element_is_visible(:baixo, @page.acesso_programa_beneficios)
  @page.touch_acesso_programa_beneficios
  @page.wait_for_progress
end

Quando(/^(?:acessar|acessei) a opção de FAQ$/) do
  @page.drag_until_element_is_visible(:baixo, @page.acesso_faq)
  @page.touch_acesso_faq
end

Quando(/^(?:que |)(?:acessei|acessar) a tela de informações de FAQ$/) do
  steps 'E acessei a opção de FAQ
         E posso ver a tela de informações de FAQ'
end

######### ENTãO #########

Então(/^posso ver as ofertas correspondentes à loja da seção$/) do
  steps 'E acessar a opção de card de ofertas
         E posso ver as ofertas da loja selecionada na seção'
end

Então(/^posso ver a opção de acesso ao Cartão Carrefour$/) do
  @page.card_cartao_carrefour_visible?
end

Então(/^posso voltar para a tela 'Faz do seu jeito'$/) do
  steps 'E estou na tela home Faz do seu jeito'
end

Então(/^posso visualizar na tela as minhas duas últimas compras realizadas$/) do
  fail unless @page.posso_ver_ultimas_compras? HOME_FAZ_DO_SEU_JEITO[:qtde_compras_exibidas]
end

Então(/^devo ser informado\(a\) que ainda não tenho compras para serem exibidas$/) do
  fail unless @page.historico_compras_vazio_visible?
end

Então(/^não posso visuaalizar a opção de FAQ$/) do
  fail if @page.acesso_faq_visible?
end
