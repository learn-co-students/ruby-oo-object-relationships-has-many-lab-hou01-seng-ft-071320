class Post
    attr_accessor :post,:author,:title

    @@all=[]

    def initialize(title)
        @title=title
        @@all<<self
    end
    
    def posts
        @@all
    end

    def self.all
        @@all
    end

    def author
        self.author=@author
    end
    def author_name
        if (self.author == nil)
            return 
        else
            return self.author.name
        end
    end
end
