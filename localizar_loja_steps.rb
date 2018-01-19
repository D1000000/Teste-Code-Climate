# coding: utf-8

# coding: utf-8
######### DADO #########
Dado(/^(?:que |)(?:posso ver a|estou na|esteja na) tela de localização por loja$/) do
  @page = page(LocalizarLojaScreen).await(timeout: 1)
end

######### QUANDO #########

Quando(/^informar o nome de uma loja$/) do  
  steps 'E estou na tela de localização por loja'
  @page.enter_campo_loja LOCALIZAR[:loja]
  @page.wait_for_progress
  @page.touch_opcao_selecionar_loja
  @page.wait_for_progress
end

Quando(/^acessar a opção de selecionar uma loja$/) do
  steps 'E estou na tela de localização por loja'
  @page.touch_opcao_selecionar_loja
  @page.wait_for_progress
end

Quando(/^(?:escolher|escolhi|escolho|seleciono) uma loja$/) do
  steps 'E estou na tela de localização por loja
         E habilito a localizacao'
  @page.escolher_loja
  @page.wait_for_progress
end

Quando(/^(?:escolher uma loja diferente|selecionar outra loja)$/) do
  steps 'E estou na tela de localização por loja'
  @page.escolher_segunda_loja
  @page.wait_for_progress
end

Quando(/^(?:selecionar|selecionei) uma loja$/) do
  steps 'E estou na tela de localização por loja
         E acessar a opção de selecionar uma loja
         E escolher uma loja'
  @page.wait_for_progress
end

Quando(/^selecionar uma loja na listagem$/) do
  sleep 2
 fail "loja nao selecionada" unless @page.touch_loja_aleatoria
end

Quando(/^ativo a localização$/) do
  @page.touch_ativar_localizacao
end

######### ENTãO #########

 Então(/^devo ser informado(a) sobre a falta de resultados$/) do
 fail unless @page.sem_ofertas_visible?
 end

Então(/^posso ver a loja definida como padrão$/) do
  steps 'E posso ver a tela de localização'
end

Então(/^posso visualizar a lista de lojas$/) do
  steps 'E estou na tela de localização por loja'
  fail "lojas nao visiveis" unless @page.lista_lojas_visible?
end

Então(/^posso ver a tela com a lista de lojas Carrefour$/) do
  steps 'E posso visualizar a lista de lojas'
end
