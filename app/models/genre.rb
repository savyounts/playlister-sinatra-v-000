class Genre < ActiveRecord::Base
  # include SlugifyableInstanceMethods
  # extend SlugifyableClassMethods
  has_many :artists, through: :songs
  has_many :song_genres
  has_many :songs, through: :song_genres

  def slug
    self.name.gsub(" ", "-").downcase
  end

  def find_by_slug(slug) 
    self.all.find{ |instance| instance.slug == slug } 
  end
end
