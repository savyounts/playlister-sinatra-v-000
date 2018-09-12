class Artist < ActiveRecord::Base
  # include Slugify::InstanceMethods
  # extend Slugify::ClassMethods
  has_many :songs
  has_many :genres, through: :songs

  def slug
    song_name = name.gsub(" ", "-").downcase
  end

  def self.find_by_slug(slug)
    artist_name = slug.split("-").map(&:capitalize).join(' ')
    artist = self.find_by(name: artist_name)
  end
end
