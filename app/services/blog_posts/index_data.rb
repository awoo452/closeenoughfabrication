module BlogPosts
  class IndexData
    Result = Struct.new(:blog_posts, keyword_init: true)

    def self.call
      new.call
    end

    def call
      Result.new(
        blog_posts: BlogPost.all
      )
    end
  end
end
