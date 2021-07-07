class Author
    attr_accessor :name, :post, :title

    def initialize(name)
        @name=name
        
    end
    
    def posts
        Post.all.each do |post|
         post.author==self
        end
     end

     def add_post(post)
        post.author=self
        Post.all<<post
    end
    def add_post_by_title(title)
        new_post=Post.new(title)
        new_post.author=self
    end

    def self.post_count
        arr=Post.all.select {|post|
        post.author != nil
        }
    arr.uniq.count
    end
end