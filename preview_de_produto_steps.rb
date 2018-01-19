# coding: utf-8
######### DADO #########

Dado(/^(?:que |)(?:posso ver a|estou na|esteja na) tela de preview de produto$/) do
  @page = page(PreviewDeProdutoScreen).await(timeout: 5)
end

Dado(/^acesso a tela de detalhe de um produto$/) do
  steps 'E que estou na tela de preview de produto'
  @page.touch_produto
  @page.wait_for_progress
end

######### QUANDO #########

Quando(/^(?:selecionar|selecionei) a opção de adicionar um produto(?: ao carrinho|)$/) do
  steps 'E que estou na tela de preview de produto'
  @valor_inicial_bandeja = @page.get_valor_bandeja
  @page.wait_for_progress
  @page.touch_botao_adicionar
  @page.wait_for_progress
end

Quando(/^(?:selecionar|seleciono|selecionei|acessar|acesso|acesse) a minha bandeja de produtos$/) do
  steps 'E que estou na tela de preview de produto'
  @page.touch_bandeja
  @page.wait_for_progress
  steps 'E posso ver a bandeja de produtos'
end

Quando(/^selecionar a opção de excluir o produto adicionado na tela de Preview do produto$/) do
   steps 'E que estou na tela de preview de produto'
  @page.touch_opcao_excluir_produto
  @page.wait_for_progress
end

Quando(/^alterar a quantidade do produto adicionado na tela de Preview do produto$/) do
  @page.touch_botao_mais_quantidade
  @page.wait_for_progress
  sleep 3 ###espera animação de adição à bandeja
  @valor_bandeja = @page.get_valor_bandeja
end

Quando(/^(?:fechar|fecho|fechei) a tela de preview do produto$/) do
  @page.touch_opcao_fechar_preview
  @page.wait_for_progress
end

Quando(/^(?:que |)(?:avance|avançar|avanceavanço) até a revisão do pedido$/) do
  steps 'E estou na tela de preview de produto
    E acesse a minha bandeja de produtos
    E selecione a opção de comprar
    E que esteja na tela de seleção de endereço
    E selecione um endereço elegível a entrega
    E efetue o agendamento da minha compra
    E acesse a tela de pagamento
    E selecionei o meio de pagamento cartão de crédito
    E preencher os dados do pagamento corretamente
    E selecionar um parcelamento disponível
    Então posso finalizar o pagamento
    E devo acessar a tela de revisão do pedido'
end

######### ENTãO #########

Então(/^posso ver que o produto foi adicionado a minha bandeja$/) do
  steps 'E que estou na tela de preview de produto
         E selecionar a minha bandeja de produtos
         E posso ver a bandeja de produtos
         E posso ver o produto na bandeja'
end

Então(/^posso ser informado\(a\) sobre a adição de produto realizada$/) do
  @page.wait_for_progress 
  fail unless @page.posso_ver_feedback_produto_adicionado? @valor_inicial_bandeja
  @page.wait_for_progress 
end


