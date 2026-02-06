module BlogPosts
  class ShowData
    Result = Struct.new(:blog_post, keyword_init: true)

    def self.call(blog_post_id:)
      new(blog_post_id: blog_post_id).call
    end

    def initialize(blog_post_id:)
      @blog_post_id = blog_post_id
    end

    def call
      blog_post = BlogPost.find(@blog_post_id)
      Result.new(blog_post: blog_post)
    end
  end
end
