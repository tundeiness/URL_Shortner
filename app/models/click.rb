class Click < ApplicationRecord
  belongs_to :link, counter_cache: :counter
  scope :descendent, -> { order(id: :desc) }
end
