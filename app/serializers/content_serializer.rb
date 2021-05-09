class ContentSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id,
             :title,
             :description,
             :item_type,
             :logo,
             :cover,
             :language,
             :length,
             :date,
             :content_info,
             :pg,
             :url
             # :genres

  # def genres 
  #   self.object.genres.map do |genre|
  #     {
  #       id: genre.id,
  #       title: genre.title
  #     }
  #   end 
  # end 

  def cover
    rails_blob_path(object.cover, only_path: true) if object.cover.attached?
  end

  def logo
    rails_blob_path(object.logo, only_path: true) if object.logo.attached?
  end
end
