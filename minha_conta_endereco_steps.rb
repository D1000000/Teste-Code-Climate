######### DADO #########

Dado(/^que esteja na tela de Endereços na Minha conta$/) do
  @page = page(MinhaContaEnderecosScreen).await(timeout: 5)
end

######### QUANDO #########

Quando(/^selecionar a opção de cadastrar um novo endereço$/) do
  @page.touch_cadastrar_novo_endereco
end

Quando(/^alterar os dados do endereço de cobrança$/) do
  steps 'E estou na tela de edição do endereço
         E editar os dados do endereço de cobrança'
  @page.wait_for_progress
end

Quando(/^alterar os dados do endereço de entrega$/) do
  steps 'E estou na tela de edição do endereço
         E editar os dados do endereço de entrega'
  @page.wait_for_progress
end

Quando(/^(?:posso ver|visualizo) que não tenho endereços cadastrados$/) do
  fail unless @page.posso_ver_lista_endereco_vazia?
end

Quando(/^realizar o cadastro do endereço de entrega e cobrança$/) do
  steps 'E selecionar a opção de cadastrar endereço
         E informar os dados do endereço de entrega corretamente
         E utilizar o mesmo endereço para cobrança'
end

Quando(/^selecionar a opção de cadastrar endereço$/) do
  @page.touch_cadastrar_endereco
end

######### ENTãO #########

Então(/^posso ver a opção de cadastrar um novo endereço$/) do
  fail unless @page.posso_ver_opcao_cadastrar_endereco?
end

Então(/^posso ver os endereços de cobrança e entrega cadastrados$/) do
  steps 'E que esteja na tela de Endereços na Minha conta'
  fail unless @page.posso_ver_enderecos_cadastrados? == 2
end

Então(/^posso ver o endereço de cobrança cadastrado$/) do
  steps 'E que esteja na tela de Endereços na Minha conta'
  fail unless @page.posso_ver_endereco_cadastrado? @outro_tipo_endereco
end

Então(/^posso ver o endereço de entrega cadastrado$/) do
  steps 'E que esteja na tela de Endereços na Minha conta'
  @page.wait_for_progress
  @page.drag_until_element_is_visible(:baixo, @outro_tipo_endereco)
end

Então(/^posso ver meus endereços de entrega cadastrados$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Então(/^posso visualizar a confirmação da alteração realizada$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Então(/^posso ver o endereço de entrega alterado$/) do
 pending
end

Então(/^posso ver que o endereço foi excluído$/) do
  steps 'E que esteja na tela de Endereços na Minha conta'
  fail unless @page.posso_ver_enderecos_cadastrados? == 1
end
