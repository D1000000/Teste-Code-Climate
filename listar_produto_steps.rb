# coding: utf-8
######### DADO #########

Dado(/^(?:que |)(?:posso ver a|estou na|esteja na|devo voltar para a) tela de (?:lista de produto|Categorias de produto|Catálogo de produtos)$/) do
  @page = page(ListarProdutoScreen).await(timeout: 5)
end

Dado(/^(?:que já tenha algum|posso ver que tenho) produto na minha bandeja$/) do
  fail unless @page.bandeja_tem_produto?
end

######### QUANDO #########

Quando(/^(?:adiciono|adicione) um produto a minha bandeja$/) do
  steps 'E selecionar uma categoria de produto
         E selecionar a opção de adicionar um produto
         E posso ser informado(a) sobre a adição de produto realizada'
  @page.wait_for_progress
end

# Quando(/^(?:selecionar|seleciono|selecionei) uma categoria de produto$/) do
#   @page.touch_categoria
#   @page.wait_for_progress
# end

Quando(/^(?:selecionar|seleciono|selecionei) uma categoria de produto diferente$/) do
  @page.touch_categoria_diferente
  @page.wait_for_progress
end

Quando(/^(?:adiciono|adicione) alguns produtos a minha bandeja$/) do
  steps 'E adiciono um produto a minha bandeja
         E fechar a tela de preview do produto
         E que estou na tela de Categorias de produto'
  @page.wait_for_progress
  steps 'E seleciono uma categoria de produto diferente
         E selecionar a opção de adicionar um produto'
end

######### ENTãO #########

Então(/^posso ver a bandeja disponível$/) do
  steps 'E estou na tela de lista de produto'
  fail unless @page.bandeja_visible?
end
