class Url < ApplicationRecord
  belongs_to :user

  validates :name, format: { with: /\A(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?\z/ix, message: "url is not in the right format" }

  # before_validate :validate_name
  before_save :set_uri

  def short_uri
    "#{ENV['HOST_URL']}/r?slug=#{slug}"
  end

  private

  def set_uri
    self.slug = SecureRandom.hex(3) if slug.nil?
  end

  # def valid_uri?(url)
  #   return false if url.include?("<script")
  #   url_regexp = /\A(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?\z/ix
  #   url =+ url_regexp ? true : false
  # end

  # def valid_name
  #   return false if name.include?("<script")
  #   url_regexp = /\A(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?\z/ix
  #   name =+ url_regexp ? true : false
  # end
end
