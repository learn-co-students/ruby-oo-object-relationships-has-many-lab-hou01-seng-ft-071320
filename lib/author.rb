class Author
    attr_accessor :name, :post

    def initialize(name)
        @name=name
    end
    
   # def posts
    #    self.posts
    #end

    def add_post(post)
        @@posts<<post
    end
    def add_post_by_title(post)
        self.posts<<post
    end
    def self.post_count
        self.posts
    end
end