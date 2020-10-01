### Id dinamicos, mudam a cada usuário cadastrado

describe 'IDs Dinâmicos', :idd do
    
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/access'
        
    end
    
    # $ => Termina com
    # ^ => Começa com
    # * => Contem 


    it 'Cadastro de Id usuario' do
        find('input[id$=UsernameInput]').set 'marcelo'
        find('input[id^=PasswordInput]').set '1234' # depois de adicionar o ^ tecle espaço para ele aceitar o comando
        find('a[id*=GetStartedButton]').click

        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'

        sleep 3
    end

end
