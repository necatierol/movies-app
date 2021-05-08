class Content < ApplicationRecord
  # active storage
  has_one_attached :logo
  has_one_attached :cover
  attr_accessor :remove_logo
  attr_accessor :remove_cover
  after_save { logo.purge if remove_logo == '1' }
  after_save { cover.purge if remove_cover == '1' }

  # enums
  enum item_type: {
    LIVE_TV: 'LIVE_TV',
    LIVE_RADIO: 'LIVE_RADIO',
    FILM: 'FILM',
    TV_SERIES: 'TV_SERIES'
  }

  enum language: { TR: 'TR', EN: 'EN' }

  # validations
  validates :item_type, :language, presence: true
end
