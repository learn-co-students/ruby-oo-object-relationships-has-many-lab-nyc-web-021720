class Post 
attr_accessor :title, :posts, :author

@@all = []
def initialize(title)
@title = title
@posts = posts
@author = author
self.class.all << self
end 

def self.all
@@all
end
def add_post(post)
    post = Author.new(name)
    post.title = self
end

def author_name
author.name if author
end




end 