class Debt < ActiveRecord::Base
  belongs_to :debtor      #Devedor
  belongs_to :branch      #Sucursal
  belongs_to :modality    #Modalidade
  belongs_to :status      #Status
  belongs_to :user        #Operador
  has_many   :deal        #Acordo
  has_many   :before_deal #Situação do Acordo
end
