class UserWatchList < ApplicationRecord
  belongs_to :content
  belongs_to :user
end
