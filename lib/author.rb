require "pry"

class Author
    attr_accessor :name 
    @@all = []
    def initialize(name)
        @name = name
        @posts = []
    end

    def posts
        Post.all
        # .select {|post| post.author == author}
        # binding.pry
    end

    def add_post(post)
        # associates the argument instance with the author (=self)
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
        # binding.pry
    end

    def self.post_count
        Post.all.length
    end
    def self.all
        @@all
    end
end