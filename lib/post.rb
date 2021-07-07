class Post

    attr_accessor :author, :title
    
        @@all = []
    
        def initialize(title)
            @title = title
            save_post
        end
    
        def save_post
            @@all << self
        end
    
        def self.all
            @@all
        end

        def author_name
            author.name if author
        end
    
    end
    