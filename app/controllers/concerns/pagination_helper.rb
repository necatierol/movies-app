module PaginationHelper
  MAX_LIMIT = 20;

  def limit
    [
      params.fetch(:limit, MAX_LIMIT).to_i,
      MAX_LIMIT
    ].min
  end

  def offset
    page = [params[:page].to_i - 1, 0].max

    page  * limit
  end
end
