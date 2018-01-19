# coding: utf-8
######### GIVEN #########

Dado(/^(?:que |)(?:posso ver a|estou na|esteja na) tela de catalogo publico$/) do
    @page = page(CatalogoPublicoScreen).await(timeout: 5)
end

######### WHEN #########

Quando(/^navego até a tela de catalogo publico$/) do
    steps 'E que estou na tela home da aplicação
           E navego até a tela \'Faz em casa\'
           E eu acessar o catalogo de produtos através do banner'
end

Quando(/^informo um CEP elegível$/) do
     fail "CEP não elegível" unless @page.cep_elegivel
     @page.wait_for_progress
end

Quando(/^informo um CEP não elegível$/) do
     fail "CEP elegível" unless @page.cep_nao_elegivel
     @page.wait_for_progress
end

Quando(/^insiro um produto na bandeja$/) do
    @page.touch_inserir_produto
end

Quando(/^acesso minha compra$/) do
    @page.touch_minha_compra
end

Quando(/^vejo a tela de liberação$/) do
     @page.botao_acesso_liberado
     @page.wait_for_progress
end

######### THEN #########

Então(/^visualizo catalogo liberado$/) do
     sleep 3
     @page.catalogo_liberado_visible?
end

Então("devo visualizar a mensagem indicando estar fora da áre de entrega") do
     @page.touch_cep_fora_da_area_entrega
end