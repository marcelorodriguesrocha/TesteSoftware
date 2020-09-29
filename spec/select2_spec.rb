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
            sleep 2
        end

    end

    describe('Multiple', :mult) do
        before(:each) do
            visit 'https://training-wheels-protocol.herokuapp.com/apps/select2/multi.html'
        end

        def Selecione(ator)
            find('.select2-selection--multiple').click
            find('.select2-search__field').set ator
            find('.select2-results__options').click
            
        end

        it 'Seleciona caixa atores' do

            atores = ['Jim Carrey', 'Owen Wilson', 'Kevin James']

            atores.each do |a|
                Selecione(a)
                
            end
           
            
            sleep 3
        end


 
    end





end