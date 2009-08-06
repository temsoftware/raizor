class User < ActiveRecord::Base
  has_many   :debtor  #Devedor
  has_many   :debt    #Divida
  has_many   :post    #Post
  belongs_to :profile #Perfil
end
