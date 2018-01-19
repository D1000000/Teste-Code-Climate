# coding: utf-8
Dado(/^(?:que |)(?:posso ver a|estou na|esteja na) tela de benefícios$/) do
  @page = page(BeneficiosScreen).await(timeout: 5)
end

######### QUANDO #########

######### ENTÃO #########

Então(/^posso visualizar a tela de informações sobre o Programa de benefícios$/) do
  @page = page(BeneficiosScreen).await(timeout: 5)
end
