### Iframe => Cria um html dentro do outro ###
### Vamos adcionar um produto no carrinho ####

describe 'iframes' do
    
    describe 'bom ', :nice_iframe do
        
        before(:each) do
            visit '/nice_iframe'
        end

        it 'Adicionar ao carrinho' do
            
            within_frame('burgerId') do #with -> quer dizer escopo
                produto = find('.menu-item-info-box', text: 'REFRIGERANTE') # sempre que vou procurar tenho que colocar o . antes
                
                produto.find('a').click  # a -> porque ele é um link no html 
                
                expect(find('#cart')).to have_content 'R$ 4,50'
                sleep 5
            end  
        end

    end

    describe 'Ruim', :bad_iframe do
        before(:each) do
            visit '/bad_iframe'
        end

        it 'Carrinho deve estar vazio' do
            
            script = '$(".box-iframe").attr("id", "tempId")'; # substitui ' por " para transformar em string e depis coloquei a ' 
            page.execute_script(script) # vai executar o script com o id tempID
            
            within_frame('tempId') do # agora chama o tempId
                expect(find('#cart')).to have_content 'Seu carrinho está vazio!'
                sleep 3 
            end
            
        end

    end

end