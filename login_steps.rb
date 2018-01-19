# coding: utf-8
######### DADO #########

Dado(/^(?:que |)(?:posso ver a|posso visualizar a|estou na|esteja na|devo ver a) tela de (?:login|autenticação)$/) do
  @page = page(LoginScreen).await(timeout: 5)
end

Dado(/^selecionar a opção de cadastro$/) do
  steps 'E que estou na tela de login'
  @page.touch_botao_cadastrar
end

Dado(/^que eu esteja na tela de Login$/) do
  steps 'E que posso ver a tela de login'
end

Dado(/^que efetuei o login com um usuário sem endereço de entrega cadastrado$/) do
  steps 'E que estou na tela de login
  E fornecer credenciais válidas de acesso, sem endereço cadastrado
  E posso efetuar meu login'
end

Dado(/^que autentiquei no sistema$/) do
  steps 'E que estou na tela de login'
  steps 'E fornecer credenciais válidas de acesso
         E posso efetuar meu login'
end

Dado(/^que autentiquei no sistema com um usuário com endereço de entrega já cadastrado$/) do
  steps 'E que estou na tela de login'
  steps 'E fornecer credenciais válidas de acesso, com endereço cadastrado
         E posso efetuar meu login'
end

######### QUANDO #########

Quando(/^(?:informar|informo) um CPF cadastrado$/) do
  @page.enter_campo_cpf LOGIN[:cpf_valido]
  @page.wait_for_progress
end

Quando(/^(?:posso |)(?:informar|informo) um CPF diferente$/) do
  @page.enter_campo_cpf LOGIN[:cpf_endereco_entrega_e_cobranca]
  @page.wait_for_progress
end

Quando(/^fornecer credenciais válidas de acesso$/) do
  @page.enter_campo_cpf LOGIN[:cpf_valido]
  @page.wait_for_progress
  @page.enter_campo_senha LOGIN[:senha_valida]
  @page.wait_for_progress
end

Quando(/^fornecer credenciais inválidas de acesso$/) do
  @page.enter_campo_cpf LOGIN[:cpf_valido]
  @page.wait_for_progress
  @page.enter_campo_senha LOGIN[:senha_invalida]
  @page.wait_for_progress
end

Quando(/^realizar login na aplicação$/) do
  steps 'E que posso ver a tela de login
         E que autentiquei no sistema'
end

Quando(/^realizar meu login$/) do
  @page.wait_for_progress
  steps 'E que eu esteja na tela de Login
         Quando fornecer credenciais válidas de acesso
         Então posso efetuar meu login'
end

Quando(/^(?:que |)(?:realizar|realize) (?:meu|o) cadastro na aplicação$/) do
  steps 'E que posso ver a tela de login
         E fornecer um CPF ainda não cadastrado
         E selecionar a opção de cadastro
         E que estou na tela de cadastro
         E inserir dados válidos de cadastro
         E aceitar os Termos de uso
         E finalizar o cadastro'
  @page.wait_for_progress
end

Quando(/^fornecer credenciais válidas de acesso, sem endereço cadastrado$/) do
  @page.enter_campo_cpf LOGIN[:cpf_sem_endereco_cadastrado]
  @page.wait_for_progress
  @page.enter_campo_senha LOGIN[:senha_valida]
  @page.wait_for_progress
end

Quando(/^fornecer credenciais válidas de acesso, com endereço cadastrado$/) do
  @page.enter_campo_cpf LOGIN[:cpf_endereco_entrega_e_cobranca]
  @page.wait_for_progress
  @page.enter_campo_senha LOGIN[:senha_valida]
  @page.wait_for_progress
end

Quando(/^(?:fornecer|forneça) um CPF ainda não cadastrado$/) do
  @page.enter_campo_cpf @page.generate_cpf
  @page.wait_for_progress
end

Quando(/^fornecer credenciais válidas de acesso, com cupons de desconto$/) do
  @page.enter_campo_cpf LOGIN[:cpf_com_cupons]
  @page.wait_for_progress
  @page.enter_campo_senha LOGIN[:senha_valida]
  @page.wait_for_progress
end

Quando(/^fornecer credenciais válidas de acesso, sem cupons de desconto$/) do
  @page.enter_campo_cpf LOGIN[:cpf_sem_cupons]
  @page.wait_for_progress
  @page.enter_campo_senha LOGIN[:senha_valida]
  @page.wait_for_progress
end

Quando(/^fornecer credenciais válidas de acesso, com histórico de compras$/) do
  @page.enter_campo_cpf LOGIN[:cpf_com_historico]
  @page.wait_for_progress
  @page.enter_campo_senha LOGIN[:senha_valida]
  @page.wait_for_progress
end

Quando(/^fornecer credenciais válidas de acesso, com compras em andamento$/) do
  @page.enter_campo_cpf LOGIN[:cpf_com_compras_em_andamento]
  @page.wait_for_progress
  @page.enter_campo_senha LOGIN[:senha_valida]
  @page.wait_for_progress
end

Quando(/^fornecer credenciais válidas de acesso, sem histórico de compras$/) do
  @page.enter_campo_cpf LOGIN[:cpf_sem_historico]
  @page.wait_for_progress
  @page.enter_campo_senha LOGIN[:senha_valida]
  @page.wait_for_progress
end

Quando(/^fornecer credenciais válidas de acesso, com lista de compras$/) do
  @page.enter_campo_cpf LOGIN[:cpf_com_lista_de_compras]
  @page.wait_for_progress
  @page.enter_campo_senha LOGIN[:senha_valida]
  @page.wait_for_progress
end

Quando(/^fornecer credenciais válidas de acesso, sem lista de compras$/) do
  @page.enter_campo_cpf LOGIN[:cpf_sem_lista_de_compras]
  @page.wait_for_progress
  @page.enter_campo_senha LOGIN[:senha_valida]
  @page.wait_for_progress
end

Quando(/^fornecer credenciais válidas de acesso, sem endereço de entrega dentro da área de cobertura$/) do
  @page.enter_campo_cpf LOGIN[:cpf_endereco_entrega_sem_cobertura]
  @page.wait_for_progress
  @page.enter_campo_senha LOGIN[:senha_valida]
  @page.wait_for_progress
end

Quando(/^fornecer credenciais válidas de acesso, com apenas o endereço de cobrança cadastrado$/) do
  @page.enter_campo_cpf LOGIN[:cpf_apenas_endereco_cobrança]
  @page.wait_for_progress
  @page.enter_campo_senha LOGIN[:senha_valida]
  @page.wait_for_progress
end

Quando(/^fornecer credenciais válidas de acesso, com dois itens na bandeja$/) do
  @page.enter_campo_cpf LOGIN[:cpf_dois_itens_na_bandeja]
  @page.wait_for_progress
  @page.enter_campo_senha LOGIN[:senha_valida]
  @page.wait_for_progress
end

Quando(/^fornecer credenciais válidas de acesso, com um item na bandeja para exclusão$/) do
  @page.enter_campo_cpf LOGIN[:cpf_com_um_item_bandeja_para_exclusao]
  @page.wait_for_progress
  @page.enter_campo_senha LOGIN[:senha_valida]
  @page.wait_for_progress
end

Quando(/^fornecer credenciais válidas de acesso, com um item na bandeja para alterar quantidade$/) do
  @page.enter_campo_cpf LOGIN[:cpf_com_um_item_bandeja_para_alterar_qtde]
  @page.wait_for_progress
  @page.enter_campo_senha LOGIN[:senha_valida]
  @page.wait_for_progress
end

Quando(/^fornecer credenciais válidas de acesso, com acesso ao Catálogo de produtos$/) do
  @page.enter_campo_cpf LOGIN[:cpf_com_acesso_catalogo]
  @page.wait_for_progress
  @page.enter_campo_senha LOGIN[:senha_valida]
  @page.wait_for_progress
end

Quando(/^fornecer credenciais válidas de acesso, sem acesso ao Catálogo de produtos$/) do
  @page.enter_campo_cpf LOGIN[:cpf_sem_acesso_catalogo]
  @page.wait_for_progress
  @page.enter_campo_senha LOGIN[:senha_valida]
  @page.wait_for_progress
end

Quando(/^fornecer credenciais válidas de acesso, elegível, sem histórico de compras realizadas$/) do
  @page.enter_campo_cpf LOGIN[:cpf_elegivel_sem_historico_compras_realizadas]
  @page.wait_for_progress
  @page.enter_campo_senha LOGIN[:senha_valida]
  @page.wait_for_progress
end

Quando(/^fornecer credenciais válidas de acesso, com um item na bandeja$/) do
  @page.enter_campo_cpf LOGIN[:cpf_que_tem_um_item_bandeja]
  @page.wait_for_progress
  @page.enter_campo_senha LOGIN[:senha_valida]
  @page.wait_for_progress
end

Quando(/^(?:efetuar|realizar) o login(?: na aplicação|) com o usuário que tem cupons de desconto$/) do
    steps 'E que estou na tela de login
         Quando fornecer credenciais válidas de acesso, com cupons de desconto
         Então posso efetuar meu login'
end

Quando(/^(?:efetuar|realizar) o login(?: na aplicação|) com o usuário sem cupons de desconto$/) do
    steps 'E que estou na tela de login
         Quando fornecer credenciais válidas de acesso, sem cupons de desconto
         Então posso efetuar meu login'
end

Quando(/^efetuar o login com o usuário que tem histórico de compras$/) do
    steps 'E que estou na tela de login
         Quando fornecer credenciais válidas de acesso, com histórico de compras
         Então posso efetuar meu login'
end

Quando(/^efetuar o login com o usuário sem histórico de compras$/) do
    steps 'E que estou na tela de login
         Quando fornecer credenciais válidas de acesso, sem histórico de compras
         Então posso efetuar meu login'
end

Quando(/^efetuar o login com o usuário sem lista de compras$/) do
    steps 'E que estou na tela de login
         Quando fornecer credenciais válidas de acesso, sem lista de compras
         Então posso efetuar meu login'
end

Quando(/^efetuar o login com o usuário com lista de compras$/) do
    steps 'E que estou na tela de login
         Quando fornecer credenciais válidas de acesso, com lista de compras
         Então posso efetuar meu login'
end

Quando(/^efetuar o login com o usuário que tem compras em andamento$/) do
    steps 'E que estou na tela de login
         Quando fornecer credenciais válidas de acesso, com compras em andamento
         Então posso efetuar meu login'
end

Quando(/^efetuar o login com um usuário sem endereço de entrega cadastrado$/) do
  steps 'E que estou na tela de login
         Quando fornecer credenciais válidas de acesso, sem endereço cadastrado
         Então posso efetuar meu login'
end

Quando(/^efetuar o login com um usuário sem endereço de entrega dentro da área de cobertura$/) do
  steps 'E que estou na tela de login
         Quando fornecer credenciais válidas de acesso, sem endereço de entrega dentro da área de cobertura
         Então posso efetuar meu login'
end

Quando(/^efetuar o login com um usuário com apenas o endereço de cobrança cadastrado$/) do
  steps 'E que estou na tela de login
         Quando fornecer credenciais válidas de acesso, com apenas o endereço de cobrança cadastrado
         Então posso efetuar meu login'
end

Quando(/^efetuar o login com um usuário com dois itens na bandeja$/) do
  steps 'E que estou na tela de login
         Quando fornecer credenciais válidas de acesso, com dois itens na bandeja
         Então posso efetuar meu login'
end

Quando(/^efetuar o login com um usuário com um item na bandeja para exclusão$/) do
  steps 'E que estou na tela de login
         Quando fornecer credenciais válidas de acesso, com um item na bandeja para exclusão
         Então posso efetuar meu login'
end

Quando(/^efetuar o login com um usuário com um item na bandeja para alterar a quantidade$/) do
  steps 'E que estou na tela de login
         Quando fornecer credenciais válidas de acesso, com um item na bandeja para alterar quantidade
         Então posso efetuar meu login'
end

Quando(/^efetuar o login com o usuário com acesso ao Catálogo de produtos$/) do
  steps 'E que estou na tela de login
         Quando fornecer credenciais válidas de acesso, com acesso ao Catálogo de produtos
         Então posso efetuar meu login'
end

Quando(/^efetuar o login com o usuário sem acesso ao Catálogo de produtos$/) do
  steps 'E que estou na tela de login
         Quando fornecer credenciais válidas de acesso, sem acesso ao Catálogo de produtos
         Então posso efetuar meu login'
end

Quando(/^efetuar o login com o usuário elegível, sem histórico de compras realizadas$/) do
  steps 'E que estou na tela de login
         Quando fornecer credenciais válidas de acesso, elegível, sem histórico de compras realizadas
         Então posso efetuar meu login'
end

Quando(/^efetuar o login com um usuário que tem um item na bandeja$/) do
  steps 'E que estou na tela de login
         Quando fornecer credenciais válidas de acesso, com um item na bandeja
         Então posso efetuar meu login'
end

Quando(/^efetuar o login com o usuário com um cartão salvo$/) do
  steps 'E que estou na tela de login
         Quando fornecer credenciais válidas de acesso, com um cartão salvo
         Então posso efetuar meu login'
end

Quando(/^autenticar na aplicação com o usuário sem nenhum endereço cadastrado$/) do
  steps 'E que estou na tela de login
         E fornecer credenciais válidas de acesso, sem nenhum endereço cadastrado'
end

Quando(/^fornecer credenciais válidas de acesso, sem nenhum endereço cadastrado$/) do
  @page.enter_campo_cpf LOGIN[:cpf_sem_nenhum_endereco_cadastrado]
  @page.wait_for_progress
  @page.enter_campo_senha LOGIN[:senha_valida]
  @page.drag_until_element_is_visible(:baixo, @page.botão_logar)
  @page.touch_botão_logar
end

Quando(/^(?:que autentiquei|autenticar) na aplicação com o usuário que tenha um endereço de cobrança e entrega cadastrados$/) do
  steps 'E que estou na tela de login
         E fornecer credenciais válidas de acesso, com endereço de entrega e cobrança cadastrados'
end

Quando(/^fornecer credenciais válidas de acesso, com endereço de entrega e cobrança cadastrados$/) do
  @page.enter_campo_cpf LOGIN[:cpf_um_endereco_entrega_e_um_cobranca]
  @page.wait_for_progress
  @page.enter_campo_senha LOGIN[:senha_valida]
  @page.drag_until_element_is_visible(:baixo, @page.botão_logar)
  @page.touch_botão_logar
end

Quando(/^fornecer credenciais válidas de acesso, com um cartão salvo$/) do
  @page.enter_campo_cpf LOGIN[:cpf_com_um_cartao_salvo]
  @page.wait_for_progress
  @page.enter_campo_senha LOGIN[:senha_valida]
end

Quando (/^autenticar na aplicação com o usuário que tenha endereços cadastrados$/) do
  steps 'E que estou na tela de login
         E fornecer credenciais válidas de acesso, com endereço cadastrado
         E posso efetuar meu login'
end

Quando(/^acessar a opção de autenticação$/) do
  @page.drag_until_element_is_visible(:baixo, @page.botão_logar)
  @page.touch_botão_logar
  @page.wait_for_progress
end

Quando(/^selecionar a opção de trocar o CPF$/) do
  @page.drag_until_element_is_visible(:baixo, @page.botao_trocar_cpf)
  @page.touch_botao_trocar_cpf
end

Quando(/^(?:que efetue|efetuar) o login com o usuário com uma compra sem produtos disponíveis para recompra$/) do
  steps 'E que estou na tela de login'
  @page.enter_campo_cpf LOGIN[:cpf_com_historico]
  @page.wait_for_progress
  @page.enter_campo_senha LOGIN[:senha_valida]
  @page.drag_until_element_is_visible(:baixo, @page.botão_logar)
  @page.touch_botão_logar
  steps 'E que navegue até a tela \'Faz em casa\''
end

Dado(/^que efetue o login com o usuário com uma compra com produtos disponíveis para recompra$/) do
steps 'E que estou na tela de login'
  @page.enter_campo_cpf LOGIN[:cpf_com_historico]
  @page.wait_for_progress
  @page.enter_campo_senha LOGIN[:senha_valida]
  @page.drag_until_element_is_visible(:baixo, @page.botão_logar)
  @page.touch_botão_logar
  steps 'E que navegue até a tela \'Faz em casa\''
end

######### ENTãO #########

Então(/^devo realizar meu login na aplicação$/) do
  steps 'E posso ver a tela home da aplicação
         E não devo ver a chamada de marketing para autenticação'
end

Então(/^não devo realizar meu login na aplicação$/) do
  steps 'E posso ver a tela de login'
end

Então(/^devo retornar para a tela anterior$/) do
  steps 'E posso ver a tela home da aplicação
         E devo ver a chamada de marketing para autenticação'
end

Então(/^devo ter acesso à opção de me cadastrar$/) do
  @page.drag_until_element_is_visible(:baixo, @page.botao_cadastrar)
  @page.touch_botao_cadastrar
  @page.wait_for_progress
  steps 'E posso ver a tela de cadastro'
end

Então(/^devo ter acesso à opção de recuperação de senha$/) do
  @page.drag_until_element_is_visible(:baixo, @page.opcao_recuperar_senha)
  @page.touch_opcao_recuperar_senha
  @page.wait_for_progress
  steps 'E posso ver a tela de recuperação de senha'
end

