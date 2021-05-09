class EpisodeSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id,
             :title,
             :description,
             :length,
             :date,
             :source,
             :source_url
end
