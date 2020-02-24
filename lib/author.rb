class Author

    attr_accessor :name, :posts


    def initialize (name)
        @name = name
    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
    end

    def author_name 
        self.author.name != nil ? (self.author.name) : (nil)
    end

    def self.post_count
        Post.all.count
    end

    def posts
        Post.all.select {|post| post.author == self}
    end

    def add_post(post)
        post.author = self
    end


end

