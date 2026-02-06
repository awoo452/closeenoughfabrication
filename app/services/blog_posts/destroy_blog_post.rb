module BlogPosts
  class DestroyBlogPost
    def self.call(blog_post:)
      new(blog_post: blog_post).call
    end

    def initialize(blog_post:)
      @blog_post = blog_post
    end

    def call
      @blog_post.destroy
    end
  end
end
