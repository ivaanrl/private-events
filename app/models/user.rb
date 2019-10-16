class User < ApplicationRecord
	has_many :events, class_name: 'Event', foreign_key: 'creator_id', dependant: true
	has_many :invites
	has_many :invites through :invites, source: "event"

end
