class Debt < ActiveRecord::Base
  belongs_to :debtor      #Devedor
  belongs_to :branch      #Sucursal
  belongs_to :modality    #Modalidade
  belongs_to :status      #Status
  belongs_to :user        #Operador
  has_many   :deal        #Acordo
  has_many   :before_deal #Situação do Acordo
  has_one    :type_status, :through => :status

  named_scope :dividas, 
              lambda { |id| { 
                  :joins => :type_status,
                  :conditions => ["debtor_id = ? and type_status_id not in (2,6)", id]}}
end
