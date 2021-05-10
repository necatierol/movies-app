class Api::V1::ContentsController < ApplicationController
  skip_before_action :verify_authenticity_token
  include DeviseTokenAuth::Concerns::SetUserByToken
  include Response
  include ExceptionHelper
  include PaginationHelper
end