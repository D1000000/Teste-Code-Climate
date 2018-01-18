class CadastroUsuarioScreen
   def initialize
        @login = 'icon profile'
        @cpf_nao_cadastrado = 'XCUIElementTypeKeyboard'
        @botao_cadastrar_usuario = 'XCUIElementTypeOther'
        @nome = 'register_user_first_name_text_field'
        @sobrenome = 'register_user_last_name_text_field'
        @genero = 'register_user_gender_text_field'
        @data_nascimento = 'XCUIElementTypeOther'
        @telefone = 'register_user_phone_text_field'
        @cep = 'register_user_cep_text_field'
        @email = 'register_user_email_text_field'
        @senha = 'register_user_password_text_field'
        @termo_de_uso = 'register_user_terms_check_box'
        @finalizar_cadastro = 'save_button'
        @erro_senha_fraca = 'Fraca'
        @botao_done = 'XCUIElementTypeButton'
   end

    def acessar_login
        find_element(name: @login ).click
    end

    def cpf_nao_cadastrado
        wait{find_element(class: @cpf_nao_cadastrado).send_keys(LOGIN[:cpf_nao_cadastrado_ios])}
        sleep 1
    end
    
    def cpf_nao_cadastrado
        wait{find_element(class: @cpf_nao_cadastrado).send_keys(LOGIN[:cpf_nao_cadastrado_ios])}
        sleep 1
    end

def cadastrar_usuariodfjdshfdsjfhksjldfsadl;fjkldsajfas;fjkl;sadfjkldsfjiojeojwiofneroin
        wait{find_element(class: @botao_cadastrar_usuario).click}
        sleep 1
    end

    def inserir_nome
        wait{find_element(id: @nome).send_keys(CADASTRO_DE_USUARIO[:nome])}
    sleep 1
    end

    def inserir_sobrenome
        wait{find_element(id: @sobrenome).send_keys(CADASTRO_DE_USUARIO[:sobrenome])}
    sleep 1 
    end

    def inserir_genero
       wait{find_element(id: @genero).click}
       sleep 1
    end

    def inserir_data_nascimento
      find_elements(class: @data_nascimento)[3].click
      find_elements(class: @data_nascimento)[3].click
      find_elements(class: @data_nascimento)[3].click
    end

    def inserir_telefone
        sleep 2
        wait{find_element(id: @telefone).send_keys(CADASTRO_DE_USUARIO[:telefone])}
        find_elements(class: @botao_done)[4].click
    end

    def inserir_cep
        wait{find_element(id: @cep).send_keys(CADASTRO_DE_USUARIO[:cep])}
        find_elements(class: @botao_done)[4].click
    end

    def inserir_email
        wait{find_element(id: @email).send_keys(CADASTRO_DE_USUARIO[:email])}
        find_elements(class: @botao_done)[4].click
    end

    def inserir_senha senha
        wait{find_element(id: @senha).send_key(senha)}
        find_elements(class: @botao_done)[4].click
    end

    def termo_de_uso
       sleep 2
       find_element(id: @termo_de_uso).click
    end

    def finalizar_cadastro
       wait{find_element(id: @finalizar_cadastro)}.click
    end

    def valida_senha_fraca
        find_element(id: @erro_senha_fraca).displayed?
    end    
end
