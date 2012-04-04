class Servidor < ActiveRecord::Base
  attr_accessible :ip, :nome

  validates_presence_of :nome
  validates_presence_of :ip
  
  has_and_belongs_to_many :sistemas, :join_table => "sistemas_servidores"
end
