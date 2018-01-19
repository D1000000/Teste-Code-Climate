######### DADO #########

Dado(/^(?:que |)(?:posso ver a|estou na|esteja na) tela de alteração de senha$/) do
  @page = page(MinhaContaAlterarSenhaScreen).await(timeout: 5)
end

######### QUANDO #########

Quando(/^inserir a senha atual correta$/) do
  @page.enter_senha_atual LOGIN[:senha_valida]
end

Quando(/^inserir uma nova senha média$/) do
  @page.enter_senha_nova CADASTRO_DE_USUARIO[:senha_media]
  steps 'E tocar no botão de alteração de senha'
end

Quando(/^inserir uma nova senha forte$/) do
  @page.enter_senha_nova CADASTRO_DE_USUARIO[:senha_forte]
  steps 'E tocar no botão de alteração de senha'
end

Quando(/^inserir uma nova senha fraca$/) do
  @page.enter_senha_nova CADASTRO_DE_USUARIO[:senha_fraca]
end

Quando(/^inserir a senha média alterada anteriormente no campo senha atual$/) do
  @page.enter_senha_atual CADASTRO_DE_USUARIO[:senha_media]
  steps 'E tocar no botão de alteração de senha'
end

Quando(/^inserir a senha forte alterada anteriormente no campo senha atual$/) do
  @page.enter_senha_atual CADASTRO_DE_USUARIO[:senha_forte]
  steps 'E tocar no botão de alteração de senha'
end

Quando(/^inserir a nova senha padrão$/) do
  @page.enter_senha_nova CADASTRO_DE_USUARIO[:senha_media]
  steps 'E tocar no botão de alteração de senha'
end

Quando(/^tocar no botão de alteração de senha$/) do
  @page.touch_botao_alterar_senha
end


######### ENTãO #########

Então(/^posso visualizar a confirmação de alteração realizada$/) do
  fail unless @page.posso_ver_confirmacao_alteracao_senha?
end

Então(/^não posso visualizar a confirmação de alteração realizada$/) do
  fail unless @page.posso_ver_erro_alteracao_senha?
end