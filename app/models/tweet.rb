class Tweet < ActiveRecord::Base
	belongs_to :user
	before_create :post_to_twitter

	def post_to_twitter
		user.twitter.update(handle)
	end
end
