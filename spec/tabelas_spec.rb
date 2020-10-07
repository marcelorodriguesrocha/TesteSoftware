## teste de tabelas ##

describe 'Tabelas', :tabs, :smoke do
    
    before(:each) do
        visit '/tables'
    end

    it 'Deve exibir o salário do Stark' do

        atores = all('table tbody tr')
        stark = atores.detect { |ator| ator.text.include?('Robert Downey Jr')}
        puts stark.text

        expect(stark.text).to include '$ 10.000.000'
    end

    it 'Deve exibir o salário do Vin diesel' do
        diesel = find('table tbody tr', text: '@vindiesel')
        expect(diesel).to have_content '$ 10.000.000'
    end
    
    it 'Deve exibir o filme velozes' do
        diesel = find('table tbody tr', text: '@vindiesel')
        expect(diesel).to have_content 'Velozes e Furiosos'
    end

    it 'Deve exibir o filme velozes por coluna' do
        diesel = find('table tbody tr', text: '@vindiesel')
        movie = diesel.all('td')[2].text #dt mostra a coluna da tabela no html
        expect(movie).to eql 'Velozes e Furiosos'
    end

    it 'Deve exibir o instagram do Chris Evans' do
        evans = find('table tbody tr', text: 'Chris Evans')
        insta = evans.all('td')[4].text 
        expect(insta).to eql '@teamcevans'
    end

    it 'Deve selecionar chris prat para remoção' do
        prat = find('table tbody tr', text: 'Chris Pratt')
        prat.find('a', text: 'delete').click 
      
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Chris Pratt foi selecionado para remoção!'
        page.driver.browser.switch_to.alert.accept

    end

    it 'Deve selecionar chris prat para edição' do
        prat = find('table tbody tr', text: 'Chris Pratt')
        prat.find('a', text: 'edit').click 
       
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Chris Pratt foi selecionado para edição!'
        page.driver.browser.switch_to.alert.accept # O Capybara não consegue obter screenshots de alerts de javascript :(  

    end
    
end