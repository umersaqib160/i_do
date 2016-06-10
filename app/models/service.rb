class Service < ActiveRecord::Base
  has_many :reservations
  belongs_to :user, foreign_key: "supplier_id"

end
