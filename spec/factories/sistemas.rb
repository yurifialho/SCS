require 'faker'

FactoryGirl.define do 
  factory :sistema do |s|
    s.nome { Faker::Company.name }
  end
  
  factory :sistema_sem_nome, parent: :sistema do |s|
    s.nome nil
  end
end
