class Author 

    attr_accessor :name


    def initialize(name)
        @name = name  

    end 

    def posts 
        Post.all.select do |post|
            post.author= self
        end 
    end 

    def add_post(post) 
        post.author = self 
    end 

    def add_post_by_title(post_title)
       a_post =  Post.new(post_title)
       a_post.author = self

    end 
    def self.post_count 
        Post.all.count 

    end 


end 

# takes in an argument of a post title, creates
# a new post with it and 
# associates the post and author (FAILED - 1)

