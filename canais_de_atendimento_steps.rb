# coding: utf-8
######### DADO #########

Dado(/^(?:que |)(?:posso ver a|estou na|esteja na|posso visualizar a) tela de canais de atendimento$/) do
  @page = page(CanaisDeAtendimentoScreen).await(timeout: 5)
end

######### QUANDO #########

######### ENTãO #########
