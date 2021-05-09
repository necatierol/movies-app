module PaginationHelper
  MAX_LIMIT = 20

  def limit
    [
      params.fetch(:limit, MAX_LIMIT).to_i,
      MAX_LIMIT
    ].min
  end

  def current_page
    [params[:page].to_i, 1].max
  end

  def offset
    (current_page - 1) * limit
  end
end
