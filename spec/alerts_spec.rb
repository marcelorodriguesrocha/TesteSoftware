# teste da tecla de alerta feito em JS

describe 'Alertas de JS', :alerts do
    
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/javascript_alerts'
    end

    it 'Alerta' do
        
        click_button 'Alerta'

        msg = page.driver.browser.switch_to.alert.text # vai procurar o brower de alerta feito pelo JS

        expect(msg).to eql 'Isto é uma mensagem de alerta'
        sleep 2
    end

    it 'Sim confirma' do
        
        click_button 'Confirma'

        msg = page.driver.browser.switch_to.alert.text 
        expect(msg).to eql 'E ai confirma?'
        sleep 2
        page.driver.browser.switch_to.alert.accept
        expect(page).to have_content 'Mensagem confirmada'
        sleep 2
    end

    it 'Não confirma' do
        
        click_button 'Confirma'

        msg = page.driver.browser.switch_to.alert.text 
        expect(msg).to eql 'E ai confirma?'
        sleep 2
        page.driver.browser.switch_to.alert.dismiss
        expect(page).to have_content 'Mensagem não confirmada'
        sleep 2
    end

    it 'Accept Prompt' do
        
        accept_prompt(with: 'Marcelo') do
            click_button 'Prompt'
            sleep 2 
        end
        expect(page).to have_content 'Olá, Marcelo'
        sleep 2
    end

    it 'Dismiss prompt', :dis do
        dismiss_prompt(with:'')do
            click_button 'Prompt'
            sleep 2
        end
        expect(page).to have_content 'Olá, null'
        sleep 2


    end

end