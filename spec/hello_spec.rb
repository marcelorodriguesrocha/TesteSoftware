# teste

describe 'Meu primeiro script', :hello do  # Bloco da swiht de teste
    
    
    
    it "Visitar a página" do       # Bloco do caso de teste
        visit '/'   # comando para acessar uma página
        expect(page.title).to eql "Training Wheels Protocols" # fazendoa validação do nome da pagina
    end
end