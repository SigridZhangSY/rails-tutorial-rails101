class BlogsController < ApplicationController
  before_filter :authenticate_user!, :only => [:new, :create]

  def new
    @group = Group.find(params[:group_id])
    @blog = Blog.new
  end

  def create
    @group = Group.find(params[:group_id])
    @blog = Blog.new(blog_params)
    @blog.group = @group
    @blog.user = current_user
    if @blog.save
      redirect_to groups_path(@group)
    else
      render :new
    end
  end

  private
  def blog_params
    params.require(:blog).permit(:content)
  end
end
