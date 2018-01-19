# coding: utf-8
### Step utilizado para fazer login na aplicação a partir do step de acessar o Menu Meu Carrefour
Dado(/^que autentiquei na aplicação$/) do
  steps 'E que navego até a tela de autenticação por meio da home da aplicação
         E que autentiquei no sistema'
  
end
### Step utilizado para fazer login na aplicação desde o início
Dado(/^(?:que |)me (?:autentiquei|autenticar|autentique) na aplicação$/) do
  steps 'E que navego até a tela de autenticação por meio da home da aplicação
         E que autentiquei no sistema'
  
end

Dado(/^que atribua uma loja a minha seção$/) do
  steps 'E que estou na tela de menu
          E acessar a home
          E posso ver a tela home
          E selecionar a opção de leitor de preço
          E estou na tela de Scan de preço
          E escolher a opção de selecionar uma loja
          E escolher uma loja
          E selecionar a opção de voltar
          E posso ver a tela home'
  @page.wait_for_progress
end

Dado(/^que efetuei o login com o usuário que tem cupons de desconto$/) do
  steps 'E que navego até a tela de autenticação por meio da home da aplicação
         E efetuar o login com o usuário que tem cupons de desconto'
end

Dado(/^que efetuei o login com o usuário sem cupons de desconto$/) do
  steps 'E que navego até a tela de autenticação por meio da home da aplicação
         E efetuar o login com o usuário sem cupons de desconto'
end

Dado(/^que efetuei o login com o usuário que tem histórico de compras(?: realizadas|)$/) do
  steps 'E que navego até a tela de autenticação por meio da home da aplicação
         E efetuar o login com o usuário que tem histórico de compras'
end

Dado(/^que efetuei o login com o usuário sem histórico de compras$/) do
  steps 'E que navego até a tela de autenticação por meio da home da aplicação
         E efetuar o login com o usuário sem histórico de compras'
end

Dado(/^que efetuei o login com o usuário sem lista de compras$/) do
  steps 'E que navego até a tela de autenticação por meio da home da aplicação
         E efetuar o login com o usuário sem lista de compras'
end

Dado(/^que efetuei o login com o usuário com lista de compras$/) do
  steps 'E que navego até a tela de autenticação por meio da home da aplicação
         E efetuar o login com o usuário com lista de compras'
end

Dado(/^que efetuei o login com o usuário que tem compras em andamento$/) do
  steps 'E que navego até a tela de autenticação por meio da home da aplicação
         E efetuar o login com o usuário que tem compras em andamento'
end

Dado(/^que me autentique na aplicação com o usuário com endereços de entrega$/) do
  steps 'E que navego até a tela de autenticação por meio da home da aplicação
         E que autentiquei no sistema com um usuário com endereço de entrega já cadastrado'
end

Dado(/^que me autentique na aplicação com o usuário sem endereços de entrega$/) do
  steps 'E que navego até a tela de autenticação por meio da home da aplicação
         E efetuar o login com um usuário sem endereço de entrega cadastrado'
end

Dado(/^que autentiquei no sistema com um usuário sem endereço de entrega dentro da área de cobertura$/) do
  steps 'E que navego até a tela de autenticação por meio da home da aplicação
        E efetuar o login com um usuário sem endereço de entrega dentro da área de cobertura'
end

Dado(/^que autentiquei no sistema com um usuário com apenas o endereço de cobrança cadastrado$/) do
  steps 'E que navego até a tela de autenticação por meio da home da aplicação
        E efetuar o login com um usuário com apenas o endereço de cobrança cadastrado'
end

Dado(/^que me autentique na aplicação com o usuário que tem um item na bandeja$/) do
  steps 'E que navego até a tela de autenticação por meio da home da aplicação
         E efetuar o login com um usuário que tem um item na bandeja'
end

Dado(/^que me autentique na aplicação com o usuário com dois itens na bandeja$/) do
  steps 'E que navego até a tela de autenticação por meio da home da aplicação
         E efetuar o login com um usuário com dois itens na bandeja'
end

Dado(/^que me autentique na aplicação com o usuário com um item na bandeja para exclusão$/) do
  steps 'E que navego até a tela de autenticação por meio da home da aplicação
         E efetuar o login com um usuário com um item na bandeja para exclusão'
end

Dado(/^que me autentique na aplicação com o usuário que tenha um item na bandeja para alterar quantidade$/) do
  steps 'E que navego até a tela de autenticação por meio da home da aplicação
         E efetuar o login com um usuário com um item na bandeja para alterar a quantidade'
end

Dado(/^que efetuei o login com o usuário com acesso ao Catálogo de produtos$/) do
  steps 'E que navego até a tela de autenticação por meio da home da aplicação
         E efetuar o login com o usuário com acesso ao Catálogo de produtos'
end

Dado(/^realizar login na aplicação com o usuário com acesso ao 'Mercado até você'$/) do
  steps 'E efetuar o login com o usuário com acesso ao Catálogo de produtos'
end

Dado(/^que me autentiquei na aplicação com o usuário sem acesso ao catálogo de produtos$/) do
  steps 'E que navego até a tela de autenticação por meio da home da aplicação
         E efetuar o login com o usuário sem acesso ao Catálogo de produtos'
end

Dado(/^que me autentiquei na aplicação com o usuário elegível, sem histórico de compras realizadas$/) do
  steps 'E que navego até a tela de autenticação por meio da home da aplicação
         E efetuar o login com o usuário elegível, sem histórico de compras realizadas'
end

Dado(/^que me autentique na aplicação com o usuário que já tem um cartão salvo$/) do
 steps 'E que navego até a tela de autenticação por meio da home da aplicação
         E efetuar o login com o usuário com um cartão salvo'
end

Dado(/^que pulei o onboarding$/) do
  steps 'E estou na tela de seleção de loja do Onboarding
         E pular o onboarding'
end