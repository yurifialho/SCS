require 'spec_helper'

describe Linguagem do 
  it "Deve ter nome como campo obrigatorio" do 
    linguagem = Linguagem.new
    linguagem.should_not be_valid
  end
  
  it "Deve aceitar apenas linguagens homologadas" do 
    l1 = Linguagem.new(nome:"Java")
    l2 = Linguagem.new(nome:"Ruby")
    l3 = Linguagem.new(nome:"C#")
    l4 = Linguagem.new(nome:"Javascript")

    l1.should be_homologada
    l2.should be_homologada
    l3.should_not be_homologada
    l4.should_not be_homologada
  end
  
end
