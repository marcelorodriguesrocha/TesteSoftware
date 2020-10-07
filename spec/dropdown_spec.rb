#caixa de opções

describe 'Caixa de opções', :dropdown do  # roda no terminal apenas o arquivo dropdown
    
    it 'Item especifico simples' do

        visit '/dropdown'
        select('Loki', from: 'dropdown' )
        sleep 3 
    end

    it 'Item especifico com find' do
        visit '/dropdown'
        drop = find('.avenger-list') # guarda a lista dentro do drop
        drop.find('option', text: 'Scott Lang').select_option # busca dentro do drop a opção Scott lang 
        sleep 3 
    end

    it 'Qualquer item', :sample do
        visit '/dropdown'
        drop = find('.avenger-list')
        drop.all('option').sample.select_option # sample faz uma seleção aleatoria
    end
end