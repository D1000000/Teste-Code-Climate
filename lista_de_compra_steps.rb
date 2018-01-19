# coding: utf-8
######### DADO #########

Dado(/^(?:que |)(?:posso ver a|estou na|esteja na)(?: tela |)(?:de|da|) lista de (?:compras|compra)(?: criada| selecionada)$/) do
  @page = page(ListaDeCompraScreen).await(timeout: 5)
end

Dado(/^estou na tela de lista de compras$/) do
  @page = page(ListaDeCompraScreen).await(timeout: 5)
end

######### QUANDO #########

Quando(/^selecionar a opção de configurações da lista$/) do
  @page.touch_opcao_configuracoes
  @page.wait_for_progress
end

Quando(/^selecionar a opção de renomear a lista$/) do
  @page.touch_opcao_renomear
  @page.wait_for_progress
end

Quando(/^selecionar a opção OK$/) do
  @page.touch_botao_ok
  @page.wait_for_progress
end

Quando(/^informar um novo nome para a lista$/) do
  @nome_lista_compras =  @page.tirar_acentos(BlaBla::Pessoa.primeiro_nome.downcase) 
  @page.enter_campo_nome_lista @nome_lista_compras
end

Quando(/^renomear a lista de compras$/) do
  steps 'E selecionar a opção de configurações da lista
         E selecionar a opção de renomear a lista
         E informar um novo nome para a lista
         E selecionar a opção OK'
end

Quando(/^(?:informar|informo) o nome do item$/) do
  @page.touch_campo_item_lista_field
  @page.enter_campo_item_lista BlaBla::Bacon.frase.downcase
end

Quando(/^(?:selecionar|seleciono|selecionei) a opção de adicionar o item a minha lista$/) do
  @page.touch_opcao_adicionar_item
end

Quando(/^(?:selecionar|seleciono|selecionei) a adição do item pelo teclado$/) do
   steps 'E selecionar a tecla padrão de ação do teclado'
end

Quando(/^(?:adicionar|adicionei|adiciono) itens a minha lista$/) do
  steps 'E informar o nome do item
         E selecionar a adição do item pelo teclado'
  @page.wait_for_progress
  steps 'E informar o nome do item
         E selecionar a opção de adicionar o item a minha lista'
  @page.wait_for_progress
end

######### ENTãO #########

Então(/^posso ver (?:a lista vazia|o empty state com uma mensagem a respeito)$/) do
  steps 'E estou na tela de lista de compras'
  fail unless @page.empty_state_visible?
end

Então(/^posso ver os itens inseridos na minha lista$/) do
  fail unless @page.posso_ver_itens_na_lista?
end
