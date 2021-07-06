class Author
    attr_accessor :name, :post

    def initialize(name)
        @name = name
    end

    def posts
        Post.all
    end

    def add_post(post)
       post.author = self
    end

    def add_post_by_title(title)
        add_post(Post.new(title))
    end

    def self.post_count
        Post.all.length
    end    
end