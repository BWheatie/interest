class Pin < ActiveRecord::Base
  validates :url, presence: true
  belongs_to :users
end
