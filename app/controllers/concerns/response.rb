module Response
  def json_response_for_object(object, serializer, status = :ok)
    render json: object, serializer: serializer, adapter: :json_api, status: status
  end

  def json_response_for_array(objects, count, serializer, status = :ok)
    render json: {
      results: objects,
      count: count,
      limit: limit,
      current_page: current_page
    }, each_serializer: serializer, adapter: :json_api, status: status
  end
end
