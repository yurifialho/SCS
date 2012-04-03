class Sistema < ActiveRecord::Base
  attr_accessible :nome

  has_one :linguagem
end
