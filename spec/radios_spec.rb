# radio

describe 'Botões de Radios', :radio do

    before(:each) do
    visit 'https://training-wheels-protocol.herokuapp.com/radios'
    end

    it 'Seleção por id' do 
        choose('cap') # choose usado quando tem um id 
    end

    it 'Selecão por find css selector' do
        find('input[value="guardians"]').click # o evento do usuario é um click, evento do css3 
    end


    after(:each) do
        sleep 3
    end

end