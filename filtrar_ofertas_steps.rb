# coding: utf-8

######### DADO #########

Dado(/^que estou na tela de ofertas de loja$/) do
    @page = page(FiltrarOfertasScreen).await(timeout: 5)
end

######### QUANDO #########

Quando(/^desmarco a opçāo de Filtrar Ofertas Meu carrefour$/) do
    @page.touch_botao_filtro_meu_carrefour
    @page.wait_for_progress
end

Quando(/^buscar por uma oferta sem resultados$/) do
  steps 'E que estou na tela de ofertas de loja
         E tocar em buscar oferta'
	@page.enter_oferta_sem_resultado OFERTAS[:oferta_inexistente]
	@page.wait_for_progress
end

Quando(/^buscar por uma oferta com resultados$/) do
	@page.buscar_oferta
end

Quando(/^tocar em buscar oferta$/) do
  @page.touch_botao_buscar_oferta
  @page.wait_for_progress
end

######### ENTãO #########

Então(/^posso ver a lista de Ofertas meu carrefour$/) do
	steps 'E que estou na tela de ofertas de lojas'
 	fail unless @page.only_meu_carrefour_is_visible?
end

Então(/^devo ser informado sobre a falta de resultados$/) do
  steps 'E que estou na tela de ofertas de loja'
   fail unless @page.sem_ofertas_visible?
end

Então(/^posso ver os resultados encontrados para a busca realizada$/) do
   fail unless  @page.oferta_com_resultado
end

