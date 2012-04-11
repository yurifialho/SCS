# -*- coding: utf-8 -*-
require 'spec_helper'

describe Sistema do 
  it 'Deve ter nome como campo obrigatório' do 
    FactoryGirl.build(:sistema_sem_nome).should_not be_valid
    FactoryGirl.build(:sistema).should be_valid
  end
  
end
