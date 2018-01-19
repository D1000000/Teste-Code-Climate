# coding: utf-8
Dado(/^(?:que |)(?:posso ver a|estou na|esteja na) tela do Programa de descontos$/) do
  @page = page(ProgramaDescontosScreen).await(timeout: 5)
end

######### QUANDO #########

######### ENTÃO #########

Então(/^posso visualizar a tela de informações sobre o Programa de descontos$/) do
  @page = page(BeneficiosScreen).await(timeout: 5)
end
