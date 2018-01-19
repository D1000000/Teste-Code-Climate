# coding: utf-8
######### DADO #########

Dado(/^(?:que |)(?:estou na|posso ver a) tela do programa Meu Carrefour$/) do
  @page = page(HomeMeuCarrefourScreen).await(timeout: 5)
end

Dado(/^que navego até a tela do programa Meu Carrefour$/) do
  steps 'E que naveguei até a tela \'Faz do seu jeito\'
         E selecionar a opção de acesso às informações sobre o Programa de benefícios
         E estou na tela do programa Meu Carrefour'
end



######### QUANDO #########

Quando(/^selecionar a opção de acesso à Minha conta$/) do
  @page.touch_acesso_minha_conta
  @page.wait_for_progress
end

Quando(/^toco em Fazer Cadastro$/) do
  @page.drag_until_element_is_visible(:baixo, @page.botao_fazer_cadastro)
  @page.touch_botao_fazer_cadastro
  @page.touch_botao_fazer_cadastro
  @page.wait_for_progress
end


######### ENTãO #########

Então(/^devo visualizar a tela do programa Meu Carrefour$/) do
  steps 'E estou na tela do programa Meu Carrefour'
  fail unless @page.webview_meu_carrefour_visible?
end