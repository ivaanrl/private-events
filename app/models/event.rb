class Event < ApplicationRecord
  has_many :invites
	has_many :attendees throug :invites, source: "user"
	belongs_to :creator, foreign_key: :creator_id, class_name: "User"
end
