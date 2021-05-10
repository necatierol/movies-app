class Admin::ContentsController < ApplicationController
  before_action :authenticate_user!
end