class Post
    attr_accessor :title, :author
    @@all = []

    def self.all
        @@all
    end

    def initialize(title, author = nil)
        @title = title
        @author = author
        self.class.all << self
    end

    def author_name
         if self.author != nil
            self.author.name
        else
            nil
        end
    end

end