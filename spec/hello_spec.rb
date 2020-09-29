# teste

describe "Meu primeiro script" do  # Bloco da swiht de teste
    it "Visitar a página" do       # Bloco do caso de teste
        visit "https://training-wheels-protocol.herokuapp.com/" # comando para acessar uma página
        expect(page.title).to eql "Training Wheels Protocol" # fazendoa validação do nome da pagina
    end
end