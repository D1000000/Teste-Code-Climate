# coding: utf-8
# language: pt

class HomeFazDoSeuJeitoScreen
    def initialize
        @home_faz_do_seu_jeito = 'bottom_navigation_item_title'
        @tela_login = 'activity_login_root'
        @chamada_marketing = 'sc_your_way_banner_root'
        @cartao_carrefour = 'tv_title'
        @programa_de_descontos = 'bt_benefits'
        @sobre = 'bt_about'
        @validar_sobre = 'your_way_about'
        @cpf_com_historico = 'login_label_cpf'
        @senha_login = 'edt_pwd'
        @botao_entrar_login = 'btn_send'
        @validar_programa_de_desconto = 'img_my_carrefour_logo'
        @botao_FAQ = 'bt_faq'
        @validar_FAQ = 'web_accept_layout'
        @acessar_canais_atendimento = 'bt_sac'
        @validar_canais_atendimento = 'tv_sac_csf_phone'
    end

    def acessar_home_faz_do_seu_jeito
        find_elements(id: @home_faz_do_seu_jeito)[2].click
    end

    def validar_tela_login
        find_element(id: @tela_login).displayed?
    end

    def acessar_chamada_marketing
        find_element(id: @chamada_marketing).click
    end

    def validar_tela_cartao_carrefour
        find_elements(id: @cartao_carrefour)[0].displayed?
    end

    def programa_de_descontos
        find_element(id: @programa_de_descontos).click
    end

    def botao_voltar
         driver.navigate().back();
    end

    def validar_home_faz_do_seu_jeito
        find_elements(id: @home_faz_do_seu_jeito)[2].displayed?
    end

    def acessar_sobre
        scroll_to("SOBRE O APP")
        find_element(id: @validar_canais_atendimento).click
    end

    def validar_sobre
        find_element(id: @validar_sobre).displayed?
    end

    def botao_login
        wait{find_element(id: @cpf_com_historico).send_keys(LOGIN[:cpf_com_historico])}
    end

    def inserir_senha_login
       wait{find_element(id: 'edt_pwd').send_key'Rs123456'}
       press_keycode(66)
    end

    def botao_entrar_login
        find_element(id: @botao_entrar_login).click
    end

    def validar_programa_de_desconto
        find_element(id: @validar_programa_de_desconto).displayed?
    end

    def acessar_FAQ
        find_element(id: @botao_FAQ).click
    end

    def validar_FAQ
        find_element(id: @validar_FAQ).displayed?        
    end

    def acessar_canais_atendimento
        find_element(id: @acessar_canais_atendimento).click        
    end

    def validar_canais_atendimento
        find_element(id: @validar_canais_atendimento).displayed?                
    end
end