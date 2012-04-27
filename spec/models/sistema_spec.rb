require 'spec_helper'

describe Sistema do 
  before :each do 
    @sistema = Sistema.new
  end
  
  it "Deve ter nome como campo obrigatorio" do 
    @sistema.nome = ""
    @sistema.should_not be_valid
    
    @sistema.nome = "Teste"
    @sistema.should be_valid
  end
  
end
