# coding: utf-8
require 'blabla'

######### DADO #########

Dado(/^(?:que |)(?:posso ver a|posso retornar à|estou na|esteja na|devo ver a|posso voltar para a) tela de cadastro$/) do
  @page = page(CadastroDeUsuarioScreen).await(timeout: 5)
end

######### QUANDO #########

Quando(/^inserir uma senha (forte|média|fraca)$/) do |tipo_senha|
  case tipo_senha
  when 'forte'
    @page.enter_campo_senha CADASTRO_DE_USUARIO[:senha_forte]
  when 'média'
    @page.enter_campo_senha CADASTRO_DE_USUARIO[:senha_media]
  when 'fraca'
    @page.enter_campo_senha CADASTRO_DE_USUARIO[:senha_fraca]
  end
end

Quando(/^finalizar o cadastro$/) do
  @page.touch_botao_finalizar_cadastro
end

Quando(/^acessar os Termos de Uso$/) do
  @page.drag_until_element_is_visible(:baixo, @page.botao_termos_de_uso)
  @page.touch_texto_termos_de_uso
end

Quando(/^acessar as Políticas de Privacidade$/) do
  @page.drag_until_element_is_visible(:baixo, @page.botao_politicas_de_privacidade)
  @page.touch_texto_politicas_de_privacidade
end

######### ENTãO #########

Então(/^(posso|não posso) efetuar meu cadastro na aplicação$/) do |posso_cadastrar|
  case posso_cadastrar
  when 'posso'
    steps 'E posso ver a tela home'
  when 'não posso'
    @page.wait_for_progress
    steps 'E posso ver a tela de cadastro'
  end
end