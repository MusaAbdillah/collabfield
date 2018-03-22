class Post < ApplicationRecord
	# association 
	belongs_to :user 
	belongs_to :category
end
