class BeforeDeal < ActiveRecord::Base
  belongs_to :debtor    #Devedor
  belongs_to :debt      #Divida
  belongs_to :type_deal #Situação do Acordo
end
