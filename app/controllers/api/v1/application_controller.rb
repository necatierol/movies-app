class Api::V1::ApplicationController < ::ApplicationController
  include DeviseTokenAuth::Concerns::SetUserByToken
  
  include Response
  include ExceptionHelper
  include PaginationHelper
end