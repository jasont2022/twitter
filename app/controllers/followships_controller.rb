class FollowshipsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_follower
  before_action :set_following

  def create_followship
    if !@follower_user.followings.include?(@following_user)
      @follower_user.followings << @following_user
      redirect_to @follower_user
    end
  end

  def destroy_followship
    if @follower_user.followings.include?(@following_user)
      @follower_user.followings.delete(@following_user)
      redirect_to @follower_user
    end
  end

  private

  def set_follower
    @follower_user = User.find(params[:from_user])
  end

  def set_following
    @following_user = User.find(params[:to_user])
  end
end
