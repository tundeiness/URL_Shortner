require 'securerandom'

class Link < ApplicationRecord

  before_save :generate_slug
  has_many :clicks, dependent: :destroy

  validates :original_url, presence: true
  validates_format_of :original_url, with: %r{(^$)|(^(http|https)://[a-z0-9]+([\-.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?/.*)?$)|(^[a-z0-9]+([\-.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?/.*)?$)}ix
  

  def generate_slug
    self.slug = SecureRandom.hex(3)
  end

  # def short_url
  #   "http://localhost:3000/r?#{generate_slug}"
  # end

end
