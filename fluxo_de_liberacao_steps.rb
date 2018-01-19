######### GIVEN #########
Dado(/^(?:que |)(?:posso ver a|estou na|esteja na|naveguei até a) tela de fluxo de liberação$/) do
  @page = page(FluxoDeLiberacaoScreen).await(timeout: 5)
end

######### WHEN #########

Quando(/^indico a loja$/) do
 fail "Loja não encontrada" unless @page.buscar_loja
   @page.touch_botao_tocar_loja
   @page.wait_for_progress
end

Quando(/^informo um CPF ja cadastrado$/) do
  fail "CPF não cadastrado" unless @page.cpf_cadastrado
  @page.wait_for_progress
end

Quando(/^informo um CPF não cadastrado$/) do
  fail "CPF cadastrado" unless @page.cpf_nao_cadastrado
  @page.wait_for_progress
end

Quando(/^tenho acesso liberado com login$/) do
  @page.touch_botao_acesso_liberado
end

Quando(/^tenho acesso liberado com cadastro$/) do
  @page.touch_botao_acesso_liberado
   steps 'E estou na tela de cadastro'
   sleep 3
end

Quando(/^eu escolher a opção de pular o fluxo$/) do
end