class BlogsController < ApplicationController
  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)

    @blog.save
    redirect_to :blogs
  end

  def show
    @blog = Blog.all.reverse
  end

  def edit
    @blog = Blogs.find(params([:id]))
  end

  def update
    @blog = Blogs.find(params([:id]))
  end
  
  private
    def blog_params
      params.require(:blog).permit(:title, :text)
    end
end
