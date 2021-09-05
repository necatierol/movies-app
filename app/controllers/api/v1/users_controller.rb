class Api::V1::UsersController < ApplicationController
  before_action :authenticate_user!

  def get_profile
  end

  def edit_profile
  end

  def add_watch_histories
  end

  def get_watch_histories
  end

  def add_watch_lists
  end

  def watch_lists
  end

  private

  def user
  end
end
