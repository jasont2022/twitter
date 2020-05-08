class PagesController < ApplicationController
before_action :authenticate_user!

  # home page
  def home
    @tweet = current_user.tweets.build
    @feed = Array.new
      current_user.followings.each do |following| 
        following.tweets.each do |tweet|
          @feed << tweet
        end
      end
      current_user.tweets.each do |tweet|
        @feed << tweet
      end
  end
  @feed.compact
end