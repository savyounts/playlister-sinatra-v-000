
#   module SlugifyableInstanceMethods
#     def slug (filename)
#       song_name = filename.gsub(/^(.*) - /, "").gsub(/\[([^\]]*)\].*/, "")
#     end
#   end
#
#   module SlugifyableClassMethods
#     def find_by_slug(slug)
#       instance = self.class.find_by(name: slug)
#     end
#   end
