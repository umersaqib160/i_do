class Service < ActiveRecord::Base
  has_many :reservations
  belongs_to :user

end
