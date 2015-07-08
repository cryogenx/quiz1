class Item < ActiveRecord::Base
	validates :name, :presence => true
	validates :serial, :presence => true
end
