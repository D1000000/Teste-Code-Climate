# coding: utf-8
######### DADO #########

Dado(/^(?:que |)(?:posso ver a|estou na|esteja na) tela de Ofertas da loja$/) do
  @page = page(FiltrarOfertasScreen).await(timeout: 5)
end

######### QUANDO #########

Quando(/^trocar a loja da seção a partir da tela de Ofertas$/) do
  steps 'E estou na tela de Ofertas da loja'
  @page.touch_opcao_trocar_loja
  @page.wait_for_progress
  steps 'E escolher uma loja diferente'
end

Quando(/^voltar para a Home$/) do
  steps 'E estou na tela de Ofertas da loja
         E selecionar a opção de voltar
         E posso ver a tela home da aplicação'
end

Quando(/^selecionar uma oferta na listagem$/) do
  @page.touch_oferta_encontrada
end

Quando(/^selecionar a opçāo de Filtrar Ofertas Meu carrefour$/) do
  steps 'E estou na tela de Ofertas da loja'
   @page.touch_botao_filtro_meu_carrefour
end

######### ENTãO #########

Então(/^posso ver as ofertas da loja(?: selecionada|)(?: na seção|)$/) do
  steps 'E estou na tela de Ofertas da loja'
  fail "oferta não encontrada" unless @page.lista_de_ofertas_visible?
  fail unless @page.loja_selecionada_visible?
end
