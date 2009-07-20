class TypeDeal < ActiveRecord::Base
  has_many :deal        #Acordo
  has_many :before_deal #Situação do Acordo
end
