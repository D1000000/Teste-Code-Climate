# coding: utf-8
######### DADO #########

Dado(/^(?:que |)(?:posso ver a|estou na|esteja na|posso visualizar a) tela de informações Sobre o App$/) do
  @page = page(SobreAplicacaoScreen).await(timeout: 5)
end

######### QUANDO #########

######### ENTãO #########
