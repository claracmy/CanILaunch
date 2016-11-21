class Project < ApplicationRecord
  DEFAULT_THUMBNAIL = '/placeholder.png'

  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, :link, :name, :description, presence: true
  validates :link, url: true

  def generate_thumbnail_uri
    LinkThumbnailer.generate(link).images.first.try(:src) || DEFAULT_THUMBNAIL
  end
end
