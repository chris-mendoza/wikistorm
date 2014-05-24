class BlogsController < ApplicationController

  layout "application"

  def index
    @blog = Blogs.last(5).reverse
  end

  def new
    @blog = Blogs.new
  end

  def create
    @blog = Blogs.new(blog_params)

    if @blog.save
      redirect_to :blogs
    else
      render 'new'
    end
  end

  def show
    @blog = Blogs.all.reverse
  end

  private
    def blog_params
      params.require(:blogs).permit(:title, :text)
    end
end
