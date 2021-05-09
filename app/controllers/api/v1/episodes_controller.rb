class Api::V1::EpisodesController < ApplicationController
  SERIALIZER = EpisodeSerializer
  before_action :set_content_season
  before_action :set_content_season_episode, only: [:show]

  # GET /contents/:content_id/seasons/:season_id/episodes
  def index
    @episodes = @season.episodes.limit(limit).offset(offset)
    @count = @season.episodes.count

    json_response_for_array(
      @episodes,
      @count,
      SERIALIZER
    )
  end

  # GET /contents/:content_id/seasons/:season_id/episodes/:id
  def show
    json_response_for_object(
      @episode,
      SERIALIZER
    )
  end

  private


  def set_content_season
    @content = Content.find(params[:content_id])
    @season = @content.seasons.find_by!(id: params[:season_id]) if @content
  end

  def set_content_season_episode
    @episode = @season.episodes.find_by!(id: params[:id]) if @season
  end
end
