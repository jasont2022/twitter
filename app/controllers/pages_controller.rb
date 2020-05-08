class PagesController < ApplicationController
before_action :authenticate_user!, expect: [:home]

  # home page
  def home
    @tweet = current_user.tweets.build
    @feed = Array.new
      current_user.following.each do |following| 
        following.tweets.each do |tweet|
          @feed << tweet
        end
      end
      current_user.tweets.each do |tweet|
        @feed << tweet
      end
    @feed.sort_by! { |tweet| tweet.created_at}
  end
end