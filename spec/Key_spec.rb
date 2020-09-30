# Usado para ver as teclas digitadas no teclado

describe 'Teclado', :key do
    
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/key_presses'
    end

    it 'Enviando teclas' do

        teclas = %i[tab escape space enter shift control alt] # não são string e sim simbolos -> %i cria uma aray de simbolos
        
        teclas.each do |t|
            find('#campo-id').send_keys t
            expect(page).to have_content 'You entered: ' + t.to_s.upcase # transforma o t em string
            sleep 1
        end

    end

    it 'Enviando Letras' do
        letras = %w[a s d f g h j k l]   # %w para receber um aray de string
        letras.each do |l| # faz um 'for it'
            find('#campo-id').send_keys l
            expect(page).to have_content 'You entered: ' + l.to_s.upcase
            sleep 1
        end
    end

end