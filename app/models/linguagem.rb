class Linguagem < ActiveRecord::Base
  attr_accessible :nome

  validates_presence_of :nome
  belongs_to :sistema
end
