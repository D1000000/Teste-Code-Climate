# coding: utf-8
require 'blabla'

######### DADO #########

Dado(/^(?:que |)(?:estou nos|estou na tela de|esteja nos|esteja na tela de|posso ver a tela de) Termos de Uso$/) do
  @page = page(TermosUsoScreen).await(timeout: 5)
end

######### QUANDO #########

######### ENTãO #########