#formularios

describe 'Meu primeiro script' do
    it 'Visitar página' do
        
    end
end

describe 'forms' do
    
    it 'Login com sucesso' do
        visit 'https://training-wheels-protocol.herokuapp.com/login'

        fill_in 'username', with: 'stark' # click dentro da caixa nome e deppois click inspecionar para ver o codigo. 
        fill_in 'password', with: 'jarvis!'

        click_button 'Login'

       expect(find('#flash').visible?).to be true

       expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'

       expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'

    end

    it 'Senha incorreta' do
        
    end

    it 'Usuario não cadastrado' do
        
    end
end  