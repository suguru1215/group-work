class Listing < ActiveRecord::Base
  belongs_to :user

  validates :home_type, presence: true
  validates :listing_name, presence: true
  validates :summary, presence: true
  validates :address, presence: true
  validates :accommodate, presence: true

end


