#formulario de cadastro 

describe 'Login com cadastro', :login3 do
    
    before (:each) do
        visit '/access'
    end
    
    it 'Login com sucesso' do
       
        within('#login') do
            find('input[name=username]').set 'stark'
            find('input[name=password]').set 'jarvis!'
            click_button 'Entrar'
        
        end

        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
        sleep 3
        ### metodo com mais comandos ###
        #login_form = find('#login')
        #login_form.find('input[name=username]').set 'stark'
        #login_form.find('input[name=password]').set 'jarvis!'
        #click_button 'Entrar'
        #expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
        #sleep 3
        
    end

    it 'Cadastro de Login' do
        
        within('#signup') do
            find('input[name=username]').set 'marcelo'
            find('input[name=password]').set '12345'
            click_link 'Criar Conta' # la no html o botão é um link começando por <a id=...
        
        end

        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
        sleep 3

    end

end  