class Profile < ActiveRecord::Base
  has_many :debtor #Devedor
  has_many :status #Status
  has_many :user   #Usuários
end
