# coding: utf-8
######### DADO #########

Dado(/^(?:que |)(?:posso ver a|estou na|esteja na|posso ver|posso acessar) (?:os detalhes|a tela de detalhe) da loja(?: selecionada|)$/) do
  @page = page(DetalheLojaScreen).await(timeout: 5)
end

######### QUANDO #########

######### ENTãO #########
