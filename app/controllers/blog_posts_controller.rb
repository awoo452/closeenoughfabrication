class BlogPostsController < ApplicationController
  before_action :set_blog_post, only: %i[edit update destroy]
  before_action :authenticate_user!, only: %i[create edit update destroy]

  def index
    data = BlogPosts::IndexData.call
    @blog_posts = data.blog_posts
  end

  def show
    data = BlogPosts::ShowData.call(blog_post_id: params[:id])
    @blog_post = data.blog_post
  end

  def new
    @blog_post = BlogPost.new
  end

  def create
    result = BlogPosts::CreateBlogPost.call(params: blog_post_params)
    @blog_post = result.blog_post

    if result.success?
      redirect_to @blog_post, notice: 'Blog Post was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    result = BlogPosts::UpdateBlogPost.call(blog_post: @blog_post, params: blog_post_params)
    @blog_post = result.blog_post

    if result.success?
      redirect_to @blog_post, notice: 'Blog Post was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    BlogPosts::DestroyBlogPost.call(blog_post: @blog_post)
    redirect_to blog_posts_url, notice: 'Blog Post was successfully destroyed.'
  end

  private

  def set_blog_post
    @blog_post = BlogPost.find(params[:id])
  end

  def blog_post_params
    params.require(:blog_post).permit(:title, :body, :description, :image, :featured)
  end
end
