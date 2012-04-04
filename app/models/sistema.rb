class Sistema < ActiveRecord::Base
  attr_accessible :nome, :linguagem, :sistema_id

  belongs_to :linguagem
end
