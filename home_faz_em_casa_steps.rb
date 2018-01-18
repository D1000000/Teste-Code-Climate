# coding: utf-8
# language: pt

Dado("que navego até a home Faz em casa") do
    fail " Erro ao iniciar a classe home faz em casa" unless @home_faz_em_casa = HomeFazEmCasaScreen.new
    fail " Erro ao acessar a home faz em casa" unless @home_faz_em_casa.acessar_home_faz_em_casa
end

Quando("navegar até a home Faz em casa") do
   @home_faz_em_casa = HomeFazEmCasaScreen.new
   fail " Erro ao acessar a home faz em casa" unless @home_faz_em_casa.acessar_home_faz_em_casa
end

Quando("fornecer um cpf ja cadastrado") do
   @home_faz_em_casa = HomeFazEmCasaScreen.new
    fail " Erro ao inserir o cpf " unless @home_faz_em_casa.cpf_ja_cadastrado
end

Quando("inserir uma senha valida") do
    fail " Erro ao inserir a senha" unless @home_faz_em_casa.senha_valida
end

Quando("selecionar entrar") do
    fail " Erro ao clicar no botao entrar" unless @home_faz_em_casa.acionar_botao_entrar
end

Quando("acesso a opção de compra") do
   fail " Erro ao acessar a opção de compra" unless @home_faz_em_casa.acessar_minha_compra
end

Então("acesso o catálogo") do
   fail " Erro ao acessar o catálogo" unless @home_faz_em_casa.acessar_catalogo
end

Então("posso visualizar a tela de autenticação de elegibilidade") do
  fail " Erro ao realizar a autenticação de elegibilidade " unless @home_faz_em_casa.validar_elegibilidade
end