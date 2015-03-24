class Location < ActiveRecord::Base
	has_many :creature_locations
	has_many :user_locations
end
