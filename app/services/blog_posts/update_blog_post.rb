module BlogPosts
  class UpdateBlogPost
    Result = Struct.new(:success?, :blog_post, keyword_init: true)

    def self.call(blog_post:, params:)
      new(blog_post: blog_post, params: params).call
    end

    def initialize(blog_post:, params:)
      @blog_post = blog_post
      @params = params
    end

    def call
      if @blog_post.update(@params)
        Result.new(success?: true, blog_post: @blog_post)
      else
        Result.new(success?: false, blog_post: @blog_post)
      end
    end
  end
end
