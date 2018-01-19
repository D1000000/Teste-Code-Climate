# coding: utf-8
require 'blabla'

######### DADO #########

Dado(/^(?:que |)(?:estou nas|estou na tela de|esteja nas|esteja na tela de|posso ver a tela de) Políticas de Privacidade$/) do
  @page = page(PoliticasPrivacidadeScreen).await(timeout: 5)
end

######### QUANDO #########



######### ENTãO #########
