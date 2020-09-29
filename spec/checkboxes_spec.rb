# caixa de seleção

describe ' Caixa de seleção ', :checkbox do
    
    before(:each) do # para todos os it vai se acessado o site pelo visit 
        visit 'https://training-wheels-protocol.herokuapp.com/checkboxes'
    end

    it 'Marcando uma seleção' do
        check('thor')
    end

    it 'Desmarcando uma seleção' do
        uncheck('antman')
    end

    it 'marcando com find set true' do
        find('input[value=cap]').set(true)
    end

    it 'Desmarcando com fin set false' do
        find('input[value="guardians"]').set(false)
    end

    after(:each) do
    sleep 3
    end

end