class Reservation < ActiveRecord::Base
  belongs_to :service
  belongs_to :user

  def supplier
    self.service.user
  end

end
