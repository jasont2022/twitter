class FollowshipsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user

  def create_followship
  end

  def destroy_followship
  end
end
