class Sistema < ActiveRecord::Base
  attr_accessible :nome, :linguagem

  has_one :linguagem
end
