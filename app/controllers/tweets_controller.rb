class TweetsController < ApplicationController
	def create
		user = User.find_by(id: current_user.id)
		sender = user.name
		username = params[:username]
		tweet = "Hey #{username}, testing sendswag out"
	    @tweet = Tweet.new(:handle => tweet)
	    @tweet.user_id = current_user.id
	    @tweet.save

	    redirect_to "/"
  	end
end
