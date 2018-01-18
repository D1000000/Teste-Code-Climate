# coding: utf-8
# language: pt

class CadastroUsuarioScreen
    def initialize
        @login = 'action_profile'
        @cpf_nao_cadastrado = 'login_label_cpf'
        @botao_cadastrar_usuario = 'btn_send'
        @nome = 'sign_up_name'
        @sobrenome = 'sign_up_lastname'
        @genero = 'sign_up_gender'
        @data_nascimento = 'sign_up_birthdate'
        @telefone = 'sign_up_phone'
        @cep = 'sign_up_cep'
        @email = 'sign_up_email'
        @senha = 'sign_up_password'
        @termo_de_uso = 'sign_up_term_optin'
        @finalizar_cadastro = 'sign_up_register'
        @erro_senha_fraca = 'textinput_error'
    end

    def acessar_login
        find_element(id: @login).click
    end

    def cadastrar_usuario
        find_element(id: @botao_cadastrar_usuario).click
    end

    def cpf_nao_cadastrado
        wait{find_element(id: @cpf_nao_cadastrado).send_keys(LOGIN[:cpf_nao_cadastrado])}
    end

    def inserir_nome
        wait{find_element(id: @nome).send_keys(CADASTRO_DE_USUARIO[:nome])}
    end

    def inserir_sobrenome
        wait{find_element(id: @sobrenome).send_keys(CADASTRO_DE_USUARIO[:sobrenome])}
    end

    def inserir_genero
       find_element(id: @genero).click
       find_elements(id: 'text1')[0].click 
    end

    def genero_feminino
       find_elements(id: 'text1')[0].click 
    end

    def inserir_data_nascimento
        wait{find_element(id: @data_nascimento).send_keys(CADASTRO_DE_USUARIO[:data_nascimento])}
    end

    def inserir_telefone
        wait{find_element(id: @telefone).send_keys(CADASTRO_DE_USUARIO[:telefone])}
        driver.navigate().back(); 
    end

    def inserir_cep
        wait{find_element(id: @cep).send_keys(CADASTRO_DE_USUARIO[:cep])}
        press_keycode(66)
    end

    def inserir_email
        wait{find_element(id: @email).send_keys(CADASTRO_DE_USUARIO[:email])}
        press_keycode(66)
    end

    def inserir_senha senha
        wait{find_element(id: @senha).send_key(senha)}
    end

    def termo_de_uso
       driver.navigate().back();
       wait{find_element(id: @termo_de_uso)}.click
    end

    def finalizar_cadastro
       wait{find_element(id: @finalizar_cadastro)}.click
    end

    def valida_senha_fraca
        find_element(id: @erro_senha_fraca).displayed?
    end
end    
