#caixa de seleção


describe 'Select2', :select2 do
    
    describe('Single') do
        before(:each)do
            visit 'https://training-wheels-protocol.herokuapp.com/apps/select2/single.html'
        end

        it 'Seleciona ator por nome' do
            
            find('.select2-selection--single').click
            sleep 2

            find('.select2-results__option', text: 'Adam Sandler').click
            sleep 2

        end

        it 'Busca e clica no ator' do
            find('.select2-selection--single').click
            sleep 2
            find('.select2-search__field').set 'Chris Rock'
            sleep 2
            find('.select2-results__option').click
            sleep 3
        end

    end

    describe('Multiple') do
        before(:each) do
            visit '/apps/select2/multi.html'
        end
    end





end