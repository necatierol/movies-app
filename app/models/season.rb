class Season < ApplicationRecord
  # model association
  belongs_to :content
  has_many :episodes, dependent: :destroy
end
