class Author
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        Author.all << self
    end

    def self.all
        @@all
    end

    def posts
        Post.all.select do |post|
            post.author == self
        end
    end

    def add_post(post_name)
        post_name.author = self
    end

    def add_post_by_title(post_title)
        post = Post.new(post_title)
        post.author = self
    end

    def self.post_count
        Post.all.count
    end
end

