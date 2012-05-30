class LinuxBlogsController < ApplicationController
  # GET /linux_blogs
  # GET /linux_blogs.json
  def index
    @linux_blogs = LinuxBlog.all.reverse

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @linux_blogs }
    end
  end

  # GET /linux_blogs/1
  # GET /linux_blogs/1.json
  def show
    @linux_blog = LinuxBlog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @linux_blog }
    end
  end

  # GET /linux_blogs/new
  # GET /linux_blogs/new.json
  def new
    @linux_blog = LinuxBlog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @linux_blog }
    end
  end

  # GET /linux_blogs/1/edit
  def edit
    @linux_blog = LinuxBlog.find(params[:id])
  end

  # POST /linux_blogs
  # POST /linux_blogs.json
  def create
    @linux_blog = LinuxBlog.new(params[:linux_blog])

    respond_to do |format|
      if @linux_blog.save
        format.html { redirect_to @linux_blog, notice: 'Linux blog was successfully created.' }
        format.json { render json: @linux_blog, status: :created, location: @linux_blog }
      else
        format.html { render action: "new" }
        format.json { render json: @linux_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /linux_blogs/1
  # PUT /linux_blogs/1.json
  def update
    @linux_blog = LinuxBlog.find(params[:id])

    respond_to do |format|
      if @linux_blog.update_attributes(params[:linux_blog])
        format.html { redirect_to @linux_blog, notice: 'Linux blog was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @linux_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /linux_blogs/1
  # DELETE /linux_blogs/1.json
  def destroy
    @linux_blog = LinuxBlog.find(params[:id])
    @linux_blog.destroy

    respond_to do |format|
      format.html { redirect_to linux_blogs_url }
      format.json { head :no_content }
    end
  end
end
