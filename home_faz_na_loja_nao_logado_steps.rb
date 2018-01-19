# coding: utf-8
######### DADO #########

Dado(/^(?:que |)(?:posso ver a|estou na|esteja na|posso voltar para a |posso visualizar a)(?: tela |)(?:Home|home)(?: da aplicação|)$/) do
  @page = page(HomeScreen).await(timeout: 20)
end

Dado(/^(?:que |)navegue até a tela de ofertas da loja$/) do
  steps 'E posso ver algumas ofertas da loja selecionada na tela
         E acessar a opção de ver mais ofertas da loja
         E posso ver a tela de Ofertas da loja'
  @page.wait_for_progress
end

Dado(/^naveguei até a tela de detalhe de uma loja$/) do
  steps 'E acessei a opção de card do localizador de lojas
         E posso ver a tela com a lista de lojas Carrefour
         E selecionar uma loja na listagem
         E posso acessar a tela de detalhe da loja selecionada'
end

Dado(/^acessei a tela de Scan de preço$/) do
  steps 'E selecionar a opção de leitor de preço'
end

######### QUANDO #########

Quando(/^(?:que |)(?:acessar|acessei) a busca$/) do
  @page.touch_botao_busca
  @page.wait_for_progress
end

Quando(/^acessar a opção de ver mais ofertas da loja$/) do
  steps 'E estou na tela home'
  @page.touch_botao_ver_mais_ofertas
end

Quando(/^alterar a loja$/) do
  steps 'E estou na tela home
        E selecionar a opção de leitor de preço
        E estou na tela de scan de preço
        E escolher a opção de trocar de loja
        E escolher uma loja diferente
        E estou na tela de scan de preço
        E selecionar a opção de voltar
        E estou na tela home'
end

Quando(/^acessar a opção de me identificar para ver os cupons$/) do
  @page.drag_until_element_is_visible(:baixo, @page.opcao_identificar_para_cupons)
  @page.touch_opcao_identificar_para_cupons
end

Quando(/^(?:acessar|acesso|acessei) a opção de card do localizador de lojas$/) do
  steps 'E estou na tela home'
  @page.drag_until_element_is_visible(:baixo, @page.card_localizador_lojas)
  @page.touch_card_localizador_lojas
end

Quando(/^selecionar a opção de leitor de preço$/) do
  @page.drag_to :baixo ### é preciso dar um drag inicial pois o card de scan aparece apenas metade, o que impossibilita o touch
  @page.drag_until_element_is_visible(:baixo, @page.opcao_scan_de_precos)
  @page.drag_to :baixo ### é preciso dar um drag após achar o elemento, pois ele não está visível na tela pra o touch
  @page.touch_opcao_scan_de_precos
end

Quando(/^(?:acessar|acesso|acessei) a opção de selecionar loja para ver ofertas$/) do
  @page.touch_opcao_selecionar_loja
end

######### ENTãO #########

Então(/^não devo ver a chamada de marketing para autenticação$/) do
  fail 'Foi possível ver banner de cadastro' if @page.banner_cadastro_visible?
end

Então(/^devo ver a chamada de marketing para autenticação$/) do
  fail 'Não foi possível ver banner de cadastro' unless @page.banner_cadastro_visible?
end

Dado(/^(?:posso |)ver algumas ofertas da loja selecionada na tela$/) do
  @page.card_ofertas_visible?
end

Então(/^posso voltar para a Home da aplicação 'Faz na loja'$/) do
  steps 'E posso ver a tela home'
end

Então(/^ver a seção de cupons vazia$/) do
  @page.drag_until_element_is_visible(:baixo, @page.secao_cupom_vazia)
end

Então(/^devo ver o card com o cupom$/) do
  fail unless @page.card_cupom_visible?
end

Então(/^devo ver a opção de acessar os cupons disponíveis$/) do
  fail unless @page.opcao_acessar_cupons_visible?
end

Então(/^devo ver que tenho cupons disponíveis$/) do
  @page.drag_until_element_is_visible(:baixo, @page.opcao_acessar_cupons)
  steps 'E devo ver o card com o cupom
         E devo ver a opção de acessar os cupons disponíveis'
end
