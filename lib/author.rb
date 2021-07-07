class Author 

    attr_reader :name

    def initialize(name) 
        @name = name
    end

    def posts 
        posts = Post.all.select {|posts| posts.author == self}
        posts 
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(post_title)
        x = Post.new(post_title)
        self.add_post(x)
    end

    def self.post_count
        Post.all.size
    end

end 