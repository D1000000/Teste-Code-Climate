# coding: utf-8
######### DADO #########

Dado(/^(?:que |)(?:posso ver a|estou na|esteja na|devo acessar a|acessei a) tela de revisão do pedido$/) do
  @page = page(RevisaoDoPedidoScreen).await(timeout: 5)
end

Dado(/^que faça o fluxo de compra com um usuário que já tem um item na bandeja$/) do
    steps 'E que me autentique na aplicação com o usuário que tenha um item na bandeja para alterar quantidade
    E que navegue até a tela de \'Categorias de produto\'
    E que já tenha algum produto na minha bandeja
    E acesse a minha bandeja de produtos
    E selecione a opção de comprar
    E que esteja na tela de seleção de endereço
    E selecione um endereço elegível a entrega
    E efetue o agendamento da minha compra
    E selecionei uma forma de pagamento
    E que acessei a tela de revisão do pedido'
end

Dado(/^que faça o fluxo de compra com um usuário que já tem dois itens na bandeja$/) do
    steps 'E que me autentique na aplicação com o usuário com dois itens na bandeja
    E que navegue até a tela de \'Categorias de produto\'
    E que já tenha algum produto na minha bandeja
    E acesse a minha bandeja de produtos
    E selecione a opção de comprar
    E que esteja na tela de seleção de endereço
    E selecione um endereço elegível a entrega
    E efetue o agendamento da minha compra
    E selecionei uma forma de pagamento
    E que acessei a tela de revisão do pedido'
end

Dado(/^que faça o fluxo de compra com um usuário que tenha um item na bandeja e queira excluí\-lo$/) do
    steps 'E que me autentique na aplicação com o usuário com um item na bandeja para exclusão
    E que navegue até a tela de \'Categorias de produto\'
    E que já tenha algum produto na minha bandeja
    E acesse a minha bandeja de produtos
    E selecione a opção de comprar
    E que esteja na tela de seleção de endereço
    E selecione um endereço elegível a entrega
    E efetue o agendamento da minha compra
    E selecionei uma forma de pagamento
    E que acessei a tela de revisão do pedido'
end

Dado(/^que faça o fluxo de compra com um usuário que tenha um item na bandeja e queira alterar a quantidade$/) do
    steps 'E que me autentique na aplicação com o usuário que tenha um item na bandeja para alterar quantidade
    E que navegue até a tela de \'Categorias de produto\'
    E que já tenha algum produto na minha bandeja
    E acesse a minha bandeja de produtos
    E selecione a opção de comprar
    E que esteja na tela de seleção de endereço
    E selecione um endereço elegível a entrega
    E efetue o agendamento da minha compra
    E selecionei uma forma de pagamento
    E que acessei a tela de revisão do pedido
    E posso ver a tela de revisão do pedido'
end

######### QUANDO #########

Quando(/^(?:selecionar|selecione) a revisão dos itens da minha compra$/) do
  @qtde_itens_compra_inicial = @page.get_qtde_itens_compra
  @page.touch_opcao_revisar_itens
  @page.wait_for_progress
  steps 'E estou na bandeja de produtos'
end

Quando(/^selecionar a revisão da forma de pagamento$/) do
  @page.touch_opcao_revisar_pagamento
end

Quando(/^(?:selecionar|seleciono|selecionei) a opção de finalizar o pedido$/) do
  @page.drag_until_element_is_visible(:baixo, @page.opcao_finalizar_pedido)
  @page.touch_opcao_finalizar_pedido
  @page.wait_for_progress
end

Quando (/^selecionar a opção de iniciar uma nova compra$/) do
    steps 'E estou na tela de revisão do pedido '
    @page.touch_comecar_nova_compra
end

Quando(/^toco para inserir um cupom$/) do
  steps 'E estou na tela de revisão do pedido'
  @page.drag_until_element_is_visible(:baixo, @page.voucher_desconto)
  @page.touch_voucher_desconto
  @page.wait_for_progress
end

Quando(/^remover o cupom$/) do
  steps 'E estou na tela de revisão do pedido'
  @page.touch_botao_remover_desconto
  @page.wait_for_progress
end

######### ENTãO #########

Então(/^devo ser informado\(a\) sobre a possibilidade de alteração do agendamento e parcelamento$/) do
  steps 'E posso ver um popup na tela'
end

Então(/^posso ver a quantidade do produto alterada$/) do
  fail unless @page.posso_ver_qtde_itens_compra_alterada? @qtde_itens_compra_inicial
end

Então(/^devo ser informado sobre a necessidade de revisão do agendamento de entrega$/) do
  fail unless @page.erro_agendamento_visible?
end

Então(/^devo ser informado sobre a necessidade de revisão do parcelamento$/) do
  @page.drag_to :baixo
  fail unless @page.erro_parcelamento_visible?
end

Então(/^devo voltar para a tela de revisão do pedido$/) do
  steps 'E estou na tela de revisão do pedido'
end

Então(/^devo ver o cartão informado$/) do
  ###Muda-se o cartão de crédito para cartão Carrefour, por isso, o método abaixo com cartão Carrefour
  @page.icone_cartao_carrefour_visible?
end

Então(/^devo ser informado\(a\) nenhum produto desta compra está disponível no momento$/) do
  fail "Produto indisponível" unless @page.carrinho_vazio_visible?
end

Então(/^posso ver a tela de catálogo de produtos$/) do
  fail "Não foi possível visualizar a tela de catalogo de produtos" unless @page.catalogo_vazio_visible?
end

Entao(/^devo visualizar o desconto aplicado$/) do
  steps 'E estou na tela de revisão do pedido'
  fail unless @page.valor_desconto_visible?
end

Entao(/^não devo visualizar desconto na compra$/) do
  steps 'E estou na tela de revisão do pedido'
  fail if @page.valor_desconto_visible?
end
