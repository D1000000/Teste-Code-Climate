# coding: utf-8
######### DADO #########
Dado(/^que Eu (?:arrastei|arrasto) a tela para (baixo|cima|esquerda|direita) ate ver o elemento "(.*?)"$/) do |direction, element|
  @page.drag_until_element_is_visible(direction.to_sym, element)
end

Dado(/^que Eu estou em uma pagina que contem '(.*?)'$/) do |page_text|
  @page.is_on_page? page_text
end

######### QUANDO #########

Quando(/^Eu arrasto a tela para (esquerda|esquerda_superior|direita|baixo|cima) (\d+) vezes$/) do |direction, times|
  @page.drag_for_specified_number_of_times(direction.to_sym, times.to_i)
end

Quando(/^Eu (?:clico|cliquei) no elemento "(.*?)"$/) do |element|
  @page.touch_screen_element element
end

Quando(/^Eu arrasto a tela para (baixo|cima|esquerda|direita)$/) do |direction|
  @page.drag_to direction.to_sym
end

Quando(/^(?:Eu |)reiniciar o aplicativo$/) do
  @page.restart_app
end

Quando(/^acessar o carrinho de compras$/) do
  @page.touch_botão_carrinho
end

Quando(/^selecionar a opção de sair da tela atual$/) do
  @page.touch_padrao_botao_voltar
end

Quando(/^(?:ao |)(?:selecionar|seleciono) a opção de voltar$/) do
  @page.wait_for_progress
  @page.touch_padrao_botao_voltar
  @page.wait_for_progress
  sleep 2
end

Quando(/^(?:selecionar|seleciono|selecionei) a tecla padrão de ação do teclado$/) do
  @page.press_user_action_button
end

Quando(/^(?:selecionar|seleciono|selecionei) a opção de cancelar no popup$/) do
  @page.touch_cancelar_popup
  @page.wait_for_progress
end

Quando(/^(?:selecionar|seleciono|selecionei) a opção principal no popup$/) do
  @page.touch_acao_principal_popup
  @page.wait_for_progress
end

Quando(/^(?:selecionei|selecionar|selecione) a opção de acesso a Minha conta$/) do
  @page.touch_acesso_minha_conta
end

Quando(/^(?:selecionei|selecionar) a opção de fechar o teclado$/) do
  @page.fechar_teclado
end

Quando(/^acessar a chamada de marketing para autenticação$/) do
  @page.touch_banner_cadastro
end

######### ENTãO #########

Então(/^Eu (?:espero|esperei) ate a barra de progresso sumir$/) do
  # wait_for_progress is a method of the base class, so doesn't matter what is
  # the value of the @page variable, because all screens will have this method
  @page.wait_for_progress
end

Então(/^Eu deveria ver a pagina '(.*?)'$/) do |page_text|
  @page.is_on_page? page_text
end

Então(/^Eu deveria ver uma pagina que contem '(.*?)'$/) do |page_text|
  @page.is_on_page? page_text
end

Então(/^faco um print$/) do
  screenshot_embed
end

Então(/^posso ver um popup na tela$/) do
  @page.popup_visible?
end

Quando(/^ativo a localização$/) do
@page.touch_ativar_localizacao
end

Quando(/^escolho a loja$/) do
 # query("* id:'edt_search'", setText:"esplanada")
  @page.touch_opcao_selecionar_loja
end
