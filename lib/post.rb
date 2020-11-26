class Post
    attr_accessor :title, :author
    @@all = []
    def initialize(title)
        @title = title
        Post.all << self
    end

    def self.all
        @@all
    end

    def author_name
      if @author
        @author.name
      else 
        return nil
      end
    end


end