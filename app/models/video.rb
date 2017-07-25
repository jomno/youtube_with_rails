class Video < ActiveRecord::Base
  resourcify
  YT_LINK_FORMAT = /\A.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*/i

  validates :link, presence: true, format: YT_LINK_FORMAT
  belongs_to :category
  def self.recent(num)
    self.order("updated_at DESC").limit(num)
  end
  def self.published_at(video)
    puts video.to_s
    return true
    video.published_at?
  end
end