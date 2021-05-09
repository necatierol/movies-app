class Api::V1::SeasonsController < ApplicationController
  SERIALIZER = SeasonSerializer
  before_action :set_content
  before_action :set_content_season, only: [:show]

  # GET /contents/:content_id/seasons
  def index
    @seasons = @content.seasons.limit(limit).offset(offset)
    @count = @content.seasons.count

    json_response_for_array(
      @seasons,
      @count,
      SERIALIZER
    )
  end

  # GET /contents/:content_id/seasons/:id
  def show
    json_response_for_object(
      @season,
      SERIALIZER
    )
  end

  private

  def set_content
    @content = Content.find(params[:content_id])
  end

  def set_content_season
    @season = @content.seasons.find_by!(id: params[:id]) if @content
  end
end
