class Author

    attr_accessor :name

    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end 

    def posts
        Post.all
    end 

    def add_post(post_new)
        post_new.author = self
    end 

    def add_post_by_title(post_title)
        new_post = Post.new(post_title)
        new_post.author = self
    end 

    def self.post_count
        Post.all.count
    end 
end 