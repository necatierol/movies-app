class SeasonSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id,
             :title,
             :date,
             :is_active


  # def cover
  #   rails_blob_path(object.cover, only_path: true) if object.cover.attached?
  # end

  # def logo
  #   rails_blob_path(object.logo, only_path: true) if object.logo.attached?
  # end
end
