# coding: utf-8
Dado(/^(?:que |)(?:posso ver a|estou na|esteja na) tela de informações de FAQ$/) do
  @page = page(FaqScreen).await(timeout: 5)
end

######### QUANDO #########

######### ENTÃO #########

Então(/^posso visualizar a tela de informações de FAQ$/) do
  @page = page(FaqScreen).await(timeout: 5)
end
