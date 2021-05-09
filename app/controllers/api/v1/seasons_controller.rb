class Api::V1::SeasonsController < ApplicationController
  before_action :set_content
  before_action :set_content_season, only: [:show]

  # GET /contents/:content_id/seasons
  def index
    json_response(@content.seasons.limit(limit).offset(offset))
  end

  # GET /contents/:content_id/seasons/:id
  def show
    json_response(@season)
  end

  private

  def set_content
    @content = Content.find(params[:content_id])
  end

  def set_content_season
    @season = @content.seasons.find_by!(id: params[:id]) if @content
  end
end
