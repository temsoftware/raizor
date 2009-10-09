class LogDebtor < ActiveRecord::Base
    belongs_to :debtor
    belongs_to :status
    belongs_to :user

    validates_presence_of :user_id
    validates_presence_of :debtor_id
    validates_presence_of :status_id
    validates_presence_of :description
end
