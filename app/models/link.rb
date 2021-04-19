class Link < ApplicationRecord
  validates :original_url, presence: true

  def self.create_new_url(long_url)
    obj=Link.new(original_url:long_url)
    obj.save
    return obj.id

  end
end
