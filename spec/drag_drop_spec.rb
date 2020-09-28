#  ->> Drag Drop usado para vocer imagens de um canto pro outro



describe 'Drag and Drop', :drop do
    
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/drag_and_drop'
    end
    
    it 'Homem Aranha pertence ao time do stark' do
        
        stark = find ('.team-stark .column')
        cap = find ('.team-cap .column')

        spiderman = find ('img[alt$=Aranha]')
        spiderman.drag_to stark  # drag arasta a imagem para outro lugar
       expect(stark).to have_css 'img[alt$=Aranha]' # tem a imagem do homem aranha na parte do stark?
       expect(cap).not_to have_css 'img[alt$=Aranha]' # Não tem o homem aranha na parte do cap!

    end


    after(:each)do
        sleep 3
    end

end