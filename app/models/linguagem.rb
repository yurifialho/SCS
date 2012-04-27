class Linguagem < ActiveRecord::Base
  attr_accessible :nome

  validates_presence_of :nome
  
  def homologada?
    ['Java', 'Ruby', 'Scala'].include? self.nome
  end
end
