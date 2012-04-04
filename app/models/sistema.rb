class Sistema < ActiveRecord::Base
  attr_accessible :nome, :linguagem, :sistema_id

  belongs_to :linguagem
  has_and_belongs_to_many :servidores, :join_table => "sistemas_servidores"
end
