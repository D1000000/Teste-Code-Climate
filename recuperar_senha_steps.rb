# coding: utf-8
######### DADO #########

Dado(/^(?:que |)(?:posso ver a|posso visualizar a|estou na|esteja na|devo ver a) tela de recuperação de senha$/) do
  @page = page(RecuperarSenhaScreen).await(timeout: 5)
end

######### QUANDO #########

######### ENTãO #########
