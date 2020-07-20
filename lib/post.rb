class Post
    attr_accessor :name, :post,:author
    @@all=[]
    def initialize(post)
        @name=name
        @@all<<post
    end
    
   # def posts
        #@@all.select do |song|
        #    song.name===@author
        #end
    #end

    def self.all
        @@all
    end

    def title
        self.title=@title
    end
    def author
        self.author=@author
    end
    def author_name
        self.author=@author.name
    end
end
