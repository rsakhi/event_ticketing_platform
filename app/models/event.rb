class Event < ApplicationRecord
  has_many :attendees,  :dependent => :destroy
  has_many :users, through: :attendees

  validates :title, presence: true, uniqueness: true
  validates :start_date, presence: true
  validates :venue, presence: true
  
end
