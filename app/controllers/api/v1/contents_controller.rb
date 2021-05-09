class Api::V1::ContentsController < ApplicationController
  before_action :set_content, only: [:show]

  # GET /contents
  def index
    @contents = Content.limit(limit).offset(offset)
    json_response(@contents)
  end

  # GET /contents/:id
  def show
    json_response(@content)
  end

  private

  def set_content
    @content = Content.find(params[:id])
  end
end
