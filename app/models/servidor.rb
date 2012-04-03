class Servidor < ActiveRecord::Base
  attr_accessible :ip, :nome

  validates_presence_of :nome
  validates_presence_of :ip
end
