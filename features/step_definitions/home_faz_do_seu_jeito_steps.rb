# coding: utf-8
# language: pt

Dado("que naveguei até a tela Faz do seu jeito") do
   @home_faz_do_seu_jeito = HomeFazDoSeuJeitoScreen.new
   @cadastro_de_usuario = CadastroUsuarioScreen.new
   fail "Não foi possível visualizar a home faz do seu jeito" unless @home_faz_do_seu_jeito.acessar_home_faz_do_seu_jeito
end

Quando("aciono o login da aplicacao") do
    fail "Não foi possível fazer o login" unless @home_faz_do_seu_jeito.botao_login
end

Quando("selecionar a opção de acesso à Minha conta") do
   fail "Não foi possível clicar no login" unless @home_faz_do_seu_jeito.acessar_login
end

Quando("acessar a chamada de marketing para autenticação") do
   fail "Não foi possível clicar no login" unless @home_faz_do_seu_jeito.acessar_chamada_marketing   
end

Quando("selecionar a opção de acesso às informações sobre o Programa de descontos") do
   fail "Não foi possível visualizar o Programa de descontos" unless @home_faz_do_seu_jeito.programa_de_descontos   
end

Quando("selecionar a opção de voltar") do
   fail "Não foi possível realizar a ação de voltar" unless @home_faz_do_seu_jeito.botao_voltar
end

Quando("acessar a opção de ver as informações Sobre o App") do
   fail "Não foi possível visualizar a aba sobre" unless @home_faz_do_seu_jeito.acessar_sobre    
end

Quando("informo a senha") do
   fail "Não foi possível cadastrar a senha" unless @home_faz_do_seu_jeito.inserir_senha_login  
end

Quando("finalizo o login") do
   fail "Erro ao clicar no botão entrar do login" unless @home_faz_do_seu_jeito.botao_entrar_login  
end

Quando("acessar a opção de FAQ") do
       fail "Erro ao clicar no na aba de FAQ" unless @home_faz_do_seu_jeito.acessar_FAQ  
end

Quando("acessar a opção de card de canais de atendimento") do
       fail "Erro ao clicar no na aba de canais de atendimento" unless @home_faz_do_seu_jeito.acessar_canais_atendimento      
end

Então("posso visualizar a tela de autenticação") do
   fail "Não foi possível visualizar a tela de login" unless @home_faz_do_seu_jeito.validar_tela_login
end

Então("posso ver a tela de autenticação") do
end

Então("posso ver a opção de acesso ao Cartão Carrefour") do
   fail "Não foi possível visualizar o campo de cartão Carrefour" unless @home_faz_do_seu_jeito.validar_tela_cartao_carrefour  
end

Então("posso visualizar a tela de informações sobre o Programa de descontos") do
       fail "Não foi possível visualizar o programa de descontos" unless @home_faz_do_seu_jeito.validar_programa_de_desconto  
end

Então("posso ver a tela home Faz do seu jeito") do
   fail "Não foi possível visualizar a home faz do seu jeito ao voltar" unless @home_faz_do_seu_jeito.validar_home_faz_do_seu_jeito      
end

Então("posso visualizar a tela de informações Sobre o App") do
       fail "Não foi possível visualizar a aba Sobre" unless @home_faz_do_seu_jeito.validar_sobre      
end

Então("posso visualizar a tela de informações de FAQ") do
      fail "Não foi possível visualizar a aba de FAQ" unless @home_faz_do_seu_jeito.validar_FAQ      
end

Então("posso visualizar a tela de canais de atendimento") do
       fail "Erro ao visualizar a aba de canais de atendimento" unless @home_faz_do_seu_jeito.validar_canais_atendimento  
end