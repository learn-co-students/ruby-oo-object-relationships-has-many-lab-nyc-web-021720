
class Post

    attr_accessor :author
    @@all = []

    def initialize(post_title)
        @title = post_title
        Post.all << self
    end

    def title
        @title
    end

    def author_name
        @author ? @author.name : nil
    end

    def self.all
        @@all
    end
end