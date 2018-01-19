# coding: utf-8
######### DADO #########

Dado(/^(?:que |)(?:posso ver a|estou na|esteja na) tela de inserção de CEP do Onboard$/) do
  @page = page(InsercaoCepOnboardScreen).await(timeout: 5)
end

######### QUANDO #########

Quando(/^fornecer um CEP inválido$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando(/^fornecer um CEP válido$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

######### ENTãO #########

Então(/^devo visualizar a tela de inserção de CEP do Onboard$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Então(/^devo visualizar uma mensagem informando que o CEP é inválido$/) do
  pending # Write code here that turns the phrase above into concrete actions
end


