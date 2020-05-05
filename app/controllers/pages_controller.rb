class PagesController < ApplicationController
before_action :authenticate_user!, expect: [:home]

  # home page
  def home
    @tweet = current_user.tweets.build
  end
end