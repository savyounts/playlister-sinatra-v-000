
#   module SlugifyableInstanceMethods
#     def slug (filename)
#       song_name = filename.gsub(/^(.*) - /, "").gsub(/\[([^\]]*)\].*/, "")
#     end
#   end
#
#   module SlugifyableClassMethods
#     def find_by_slug(slug) 
        # self.all.find{ |instance| instance.slug == slug } 
      end
#   end
