class Song < ActiveRecord::Base
  # include SlugifyableInstanceMethods
  # extend SlugifyableClassMethods
  belongs_to :artist
  has_many :song_genres
  has_many :genres, through: :song_genres

  def slug
    self.name.gsub(" ", "-").downcase
  end

  def self.find_by_slug(slug) 
    instance_name = slug.split.map(&:capitalize).join(' ')
    instace = self.find_by(name: instance_name)
  end
end
