class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
  include Response
  include ExceptionHelper
  include PaginationHelper
end
