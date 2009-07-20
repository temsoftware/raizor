class User < ActiveRecord::Base
  has_many   :debtor  #Devedor
  has_many   :debt    #Divida
  belongs_to :profile #Perfil
end
