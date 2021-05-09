class Api::V1::ContentsController < ApplicationController
  SERIALIZER = ContentSerializer
  before_action :set_content, only: [:show]

  # GET /contents
  def index
    @contents = Content.limit(limit).offset(offset)
    @count = Content.count

    json_response_for_array(
      @contents,
      @count,
      SERIALIZER
    )
  end

  # GET /contents/:id
  def show
    json_response_for_object(
      @content,
      SERIALIZER
    )
  end

  private

  def set_content
    @content = Content.find(params[:id])
  end
end
