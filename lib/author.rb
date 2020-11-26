class Author    

    attr_accessor :name
    attr_reader :author

    def initialize(name)
        @name = name 
    end 
    
    def posts
        Post.all.select do |post| #return an array of posts of the same author 
            post.author == self 
        end
    end

    def add_post(post)
        post.author = self 
    end

    def add_post_by_title(post)
        new_post = Post.new(post)
        new_post.author = self 
    end

    def self.post_count 
        Post.all.count 
    end 
end