class Post < ActiveRecord::Base
  belongs_to :debtor
  belongs_to :user
end
