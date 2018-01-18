# coding: utf-8
# language: pt

Dado("que navego até a tela de login") do
   @cadastro_de_usuario = CadastroUsuarioScreen.new
   @cadastro_de_usuario.acessar_login
end

Quando("fornecer um CPF ainda não cadastrado") do
   fail " Erro ao inserir cpf"  unless @cadastro_de_usuario.cpf_nao_cadastrado
end

Quando("selecionar a opção de cadastro") do
   fail " Erro ao cadastrar"  unless @cadastro_de_usuario.cadastrar_usuario
end

Quando("inserir dados válidos de cadastro") do
   fail " Erro ao inserir o nome"            unless @cadastro_de_usuario.inserir_nome
   fail " Erro ao inserir o sobrenome"       unless @cadastro_de_usuario.inserir_sobrenome
   fail " Erro ao inserir o genero"          unless @cadastro_de_usuario.inserir_genero
   fail " Erro no campo data de nascimento"  unless @cadastro_de_usuario.inserir_data_nascimento
   fail " Erro ao inserir o celular"         unless @cadastro_de_usuario.inserir_telefone
   fail " Erro ao inserir o cep"             unless @cadastro_de_usuario.inserir_cep
   fail " Erro ao inserir o email"           unless @cadastro_de_usuario.inserir_email
end

Quando(/^inserir uma senha (forte|media|fraca)$/) do | forca_senha |
   # forca_senha = @cadastro_de_usuario.tirar_acentos forca_senha
   senha = CADASTRO_DE_USUARIO["senha_#{forca_senha}".to_sym]
   fail " Erro ao inserir a senha #{forca_senha}: #{senha}"  unless @cadastro_de_usuario.inserir_senha senha
end

Quando("aceitar os Termos de uso") do
   fail " Erro ao aceitar o termo de uso"  unless @cadastro_de_usuario.termo_de_uso
end

Então("finalizo o cadastro") do
   fail " Erro ao clicar em finalizar cadastro"  unless @cadastro_de_usuario.finalizar_cadastro
end

Então("não realizo o cadastro visualizando a mensagem de alerta") do
   fail " Erro ao gerar mensagem de alerta senha fraca"  unless @cadastro_de_usuario.valida_senha_fraca
end