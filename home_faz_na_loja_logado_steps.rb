# coding: utf-8
######### DADO #########

Dado(/^(?:que |)(?:posso ver a|estou na|esteja na) tela (?:home |)(?:da aplicação |)(?:\'|)Faz na loja(?:\'|)$/) do
  @page = page(HomeScreen).await(timeout: 15)
end

Dado(/^navego até a tela de ofertas de uma loja$/) do
  steps 'E acessar a opção de Ver ofertas
       E selecionar uma loja'
end

######### QUANDO #########

Quando(/^(?:acessar|selecionar) a tela de Scan de preço$/) do
  steps 'E posso ver a tela home'
  @page.drag_until_element_is_visible(:baixo, @page.opcao_scan_de_precos)
  @page.drag_to :baixo
  @page.touch_opcao_scan_de_precos
  steps 'E posso ver a tela de scan de preço'
end

Quando(/^acessar a opção de Ver ofertas$/) do
  @page.touch_card_ofertas
end

Quando(/^(?:seleciono|selecionar|selecionei) uma loja para ver ofertas$/) do
  steps 'E acessar a opção de Ver ofertas
         E selecionar uma loja
         E voltar para a Home'
end

Quando(/^trocar a loja da seção$/) do
  steps 'E acessar a opção de scan de preços
         E escolher a opção de trocar de loja
         E escolher uma loja diferente
         E posso ver a tela de scan de preço
         E selecionar a opção de voltar'
end

Quando(/^(?:selecionar|selecionei) a opção de acesso às informações sobre o Programa de descontos$/) do
  @page.touch_opcao_informacoes_programa_descontos
end

Quando(/^(?:selecionar|selecionei) a opção de acesso às instruções sobre o Programa de descontos$/) do
  @page.touch_opcao_instrucoes_programa_descontos
end

Quando(/^(?:acessar|acesso) a opção de ver os cupons disponíveis$/) do
  @page.drag_until_element_is_visible(:baixo, @page.opcao_acessar_cupons)
  @page.touch_opcao_acessar_cupons
end

Quando(/^selecionar a opção de acesso às Lojas participantes$/) do
  @page.drag_until_element_is_visible(:baixo, @page.acesso_lojas_participantes)
#  @page.drag_to :baixo
  @page.touch_acesso_lojas_participantes
  @page.wait_for_progress
end

Quando(/^toco em conhecer Meu Carrefour$/) do
  steps 'E estou na tela home Faz na loja'
  @page.touch_conhecer_meu_carrefour
  @page.wait_for_progress
end

######### ENTãO #########

Então(/^devo ser informado\(a\) sobre a indisponibilidade de cupons no momento$/) do
  @page.drag_until_element_is_visible(:baixo, @page.secao_cupom_vazia)
  fail unless @page.secao_cupom_vazia_visible?
end
