module BlogPosts
  class CreateBlogPost
    Result = Struct.new(:success?, :blog_post, keyword_init: true)

    def self.call(params:)
      new(params: params).call
    end

    def initialize(params:)
      @params = params
    end

    def call
      blog_post = BlogPost.new(@params)

      if blog_post.save
        Result.new(success?: true, blog_post: blog_post)
      else
        Result.new(success?: false, blog_post: blog_post)
      end
    end
  end
end
