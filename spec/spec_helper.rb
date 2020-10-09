require "capybara" # importa o capybara
require "capybara/rspec" 
require "selenium-webdriver"



RSpec.configure do |config|
 
  config.expect_with :rspec do |expectations|
    
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

 
  config.mock_with :rspec do |mocks|
   
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.include Capybara::DSL

  config.after(:example) do |e|
    nome = e.description.gsub(/[^A-Za-z0-9 ]/, '').tr(' ', '_') # tira todo os espação e acentos das palavras
    page.save_screenshot('log/'+nome+'.png') if e.exception # exception -> para mostrar apenas os teste que falharam
  end

  config.before(:example) do # deixa todos os teste com 1280 x 800 de resolução
    page.current_window.resize_to(1280, 800)
  end


end

Capybara.configure do |config|
  config.default_driver = :selenium #_chrome_headless  # ou :selenium_chrome para usar o google chrome
  config.default_max_wait_time = 15 # o Capybara tem até 5 seg para encontrar um elemento.
  config.app_host = 'https://training-wheels-protocol.herokuapp.com'

end
  #

  ### headless -> faz os teste sem abrir o navegador web ##