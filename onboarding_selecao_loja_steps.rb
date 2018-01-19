# coding: utf-8
######### DADO #########

Dado(/^(?:que |)(?:posso ver a|estou na|esteja na) tela de seleção de loja do Onboarding$/) do
  @page = page(SelecaoLojaOnboardingScreen).await(timeout: 15)
end

Quando(/^eu permitir o acesso à localização$/) do
  @page.botao_cancelar_gps
end

Quando(/^pular o onboarding$/) do
  @page.wait_for_progress
  @page.touch_botao_pular
end

Então(/^posso ver a lista de lojas/) do
  @page.wait_for_progress
  fail "não foi possivel ver a lista de lojas" unless @page.posso_ver_lista_lojas?
end

#Quando(/^eu fornecer o nome da loja no campo de busca de loja$/) do

#end

#Então(/^não posso ver a lista de lojas próximas$/) do
 # pending # Write code here that turns the phrase above into concrete actions
#end

#Então(/^posso ver uma mensagem de erro de conexão$/) do
#  pending # Write code here that turns the phrase above into concrete actions
#end

#Então(/^posso ver a opção de tentar novamente$/) do
#  pending # Write code here that turns the phrase above into concrete actions
#end
