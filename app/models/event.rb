class Event < ApplicationRecord
  
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
  has_many :rsvps, foreign_key: :attended_event_id, dependent: :destroy
  has_many :attendees, through: :rsvps, dependent: :destroy
  
  validates :name, :description, :location, :date, presence: true

  scope :past, -> { where('date < ?', Date.today).order(date: :desc) }
  scope :future, -> { where('date >= ?', Date.today).order(:date) }
end
