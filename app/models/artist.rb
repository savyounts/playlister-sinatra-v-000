class Artist < ActiveRecord::Base
  # include SlugifyableInstanceMethods
  # extend SlugifyableClassMethods
  has_many :songs
  has_many :genres, through: :songs

  def slug
    self.name.gsub(" ", "-").downcase
  end

  def self.find_by_slug(slug) 
    instance_name = slug.split.map(&:capitalize).join(' ')
    instace = self.find_by(name: instance_name)
  end
end
