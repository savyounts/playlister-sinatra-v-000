class Genre < ActiveRecord::Base
  # include SlugifyableInstanceMethods
  # extend SlugifyableClassMethods
  has_many :artists, through: :songs
  has_many :song_genres
  has_many :songs, through: :song_genres

  def slug
    self.name.gsub(" ", "-").downcase
  end

  def self.find_by_slug(slug) 
    instance_name = slug.split.map(&:capitalize).join(' ')
    instace = self.find_by(name: instance_name)
  end
end
