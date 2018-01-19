# coding: utf-8
######### DADO #########
Dado(/^(?:que estou na tela de dados pessoais da minha conta|posso visualizar a tela de Minha conta|que estou na tela de visualização dos meus dados pessoais)$/) do
  @page = page(MinhaContaDadosCadastraisScreen).await(timeout: 5)
end

Dado(/^que navegue até a tela de alteração de senha$/) do
  steps 'E que estou na tela de dados pessoais da minha conta
         E toco na opção de acesso à alteração de senha
         E que esteja na tela de alteração de senha'
end

Dado(/^(?:navegar|que naveguei) até a tela de Endereços na Minha conta$/) do
  steps 'E que estou na tela Faz na loja
         E selecionei a opção de acesso a Minha conta
         E posso visualizar a tela de Minha conta
         E toco na opção de acesso à tela de Endereços
         E que esteja na tela de Endereços na Minha conta'
         @page.wait_for_progress
end

######### QUANDO #########

Quando(/^(?:tocar|toquei|toco) na opção de acesso à alteração de senha$/) do
  @page.touch_aba_alterar_senha
end

Quando(/^(?:tocar na|toquei na|toco na|acessar a) opção de alterar os dados cadastrais$/) do
  @page.touch_alterar_dados_cadastrais
end

Quando(/^toco na opção de acesso à tela de Endereços$/) do
  @page.touch_aba_alterar_enderecos
end

Quando(/^alterar os meus dados pessoais$/) do
  @page.enter_nome EDITAR_DADOS_PESSOAIS[:nome]
  @page.enter_sobrenome EDITAR_DADOS_PESSOAIS[:sobrenome]
  @page.enter_genero EDITAR_DADOS_PESSOAIS[:genero]
  @page.enter_data_nascimento EDITAR_DADOS_PESSOAIS[:data_nascimento]
  @page.enter_telefone EDITAR_DADOS_PESSOAIS[:telefone]
end

Quando(/^confirmar as alterações de email feitas$/) do
  fail unless @page.posso_ver_confirmacao_email?
end

Quando(/^confirmar as alterações de sms feitas$/) do
  fail unless @page.posso_ver_confirmacao_sms?
end

Quando(/^confirmar as alterações de notificação feitas$/) do
  @page.drag_until_element_is_visible(:baixo, @page.botao_alterar_dados_pessoais)
  @page.touch_botao_alterar_dados_pessoais
end

Quando(/^alterar o recebimento de notificação por e\-mail$/) do
  @page.drag_until_element_is_visible(:baixo, @page.confirma_recebimento_email)
  @page.touch_confirma_recebimento_email
  @status_notificacao_email = @page.get_status_notificacao_email
end

Quando(/^alterar o recebimento de notificação por SMS$/) do
  @page.drag_until_element_is_visible(:baixo, @page.confirma_recebimento_sms)
  @page.touch_confirma_recebimento_sms
  @status_notificacao_sms = @page.get_status_notificacao_sms
end

Quando(/^confirmar as alterações feitas$/) do
  @page.drag_until_element_is_visible(:baixo, @page.botao_alterar_dados_pessoais)
  @page.touch_botao_alterar_dados_pessoais
end

Quando(/^selecionar a opção de sair da aplicação$/) do
  @page.touch_opcao_sair
  @page.wait_for_progress
end

######### ENTãO #########

Então(/^posso ver meus dados cadastrais$/) do
  @page.layout_name
end

Entao(/^posso visualizar a confirmação das alterações realizadas$/) do
  fail unless @page.posso_ver_alteracao_dados_pessoais?
end

Entao(/^posso ver que o recebimento de notificação foi alterado$/) do
  steps 'E toco na opção de alterar os dados cadastrais
         E posso ver a alteração de notificação de email realizada
         E posso ver a alteração de notificação de sms realizada'
end

Então (/^posso ver a alteração de notificação de email realizada$/) do
  @page.drag_until_element_is_visible(:baixo, @page.confirma_recebimento_email)
  fail unless @page.posso_ver_notificacao_email_alterada? @status_notificacao_email
end

Então (/^posso ver a alteração de notificação de sms realizada$/) do
  @page.drag_until_element_is_visible(:baixo, @page.confirma_recebimento_sms)
  fail unless @page.posso_ver_notificacao_sms_alterada? @status_notificacao_sms
end

Então(/^posso ver a tela de visualização dos meus dados pessoais$/) do
  fail unless @page.layout_name_visible?
end