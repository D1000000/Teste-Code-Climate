# coding: utf-8
######### DADO #########

Dado(/^(?:que |)(?:posso ver a|estou na|esteja na) tela de menu$/) do
  @page = page(MenuScreen).await(timeout: 15)
end

######### QUANDO #########

Quando(/^(?:que |)(?:acessar|acessei) a home \'Faz em casa\'$/) do
  @page.touch_home_faz_em_casa
  @page.wait_for_progress
  steps 'E posso ver a tela home Faz em casa'
end

Quando(/^(?:que |)(?:acessar|acessei) a home \'Faz na loja\'$/) do
  @page.touch_home_faz_na_loja
  @page.wait_for_progress
  steps 'E posso ver a tela home Faz na loja'
end

Quando(/^(?:que |)(?:acessar|acessei) a home \'Faz do seu jeito\'$/) do
  @page.touch_home_faz_do_seu_jeito
  @page.wait_for_progress
  steps 'E posso ver a tela home Faz do seu jeito'
end

Quando(/^(?:que |)(?:acessar|acessei) a home$/) do
  @page.touch_home_faz_na_loja
  @page.wait_for_progress
  steps 'E posso ver a tela home Faz na loja'
end

######### ENTãO #########
