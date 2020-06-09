class Author
    attr_accessor :name 
    def initialize(name)
        @name = name
        @posts = []
    end
    def add_post(post)
        @posts << post
        post.author = self
    end
    def posts
        Post.all.each do |post|
            post.author == self
           end
    end
    
    def add_post_by_title(name)
        post = Post.new(name) 
        @posts << post
        post.author = self    
    end

    def self.post_count
        Post.all.count
    end
end