

describe 'Upload', :upload do
    
    before(:each) do

        visit 'https://training-wheels-protocol.herokuapp.com/upload'
        @arquivo = Dir.pwd + '/spec/fixtures/arquivo.txt' # retorna o diretorio na qual o projeto esta sendo executado
        @logotipo = Dir.pwd + '/spec/fixtures/logotipo.png'
    end

        it 'Upload com arquivo texto' do
            attach_file('file-upload', @arquivo)
            click_button 'Upload'

            div_arquivo = find('#uploaded-file')
            expect(div_arquivo.text).to eql 'arquivo.txt'
        end

        it 'Upload de Imagem' do
            attach_file('file-upload', @logotipo)
            click_button 'Upload'
            img = find('#new-image')
            expect(img[:src]).to include '/uploads/logotipo.png'
        end

    after(:each)do
        sleep 3
    end

end