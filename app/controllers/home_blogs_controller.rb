class HomeBlogsController < ApplicationController
  # GET /home_blogs
  # GET /home_blogs.json
  def index
    @home_blogs = HomeBlog.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @home_blogs }
    end
  end

  # GET /home_blogs/1
  # GET /home_blogs/1.json
  def show
    @home_blog = HomeBlog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home_blog }
    end
  end

  # GET /home_blogs/new
  # GET /home_blogs/new.json
  def new
    @home_blog = HomeBlog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @home_blog }
    end
  end

  # GET /home_blogs/1/edit
  def edit
    @home_blog = HomeBlog.find(params[:id])
  end

  # POST /home_blogs
  # POST /home_blogs.json
  def create
    @home_blog = HomeBlog.new(params[:home_blog])

    respond_to do |format|
      if @home_blog.save
        format.html { redirect_to @home_blog, notice: 'Home blog was successfully created.' }
        format.json { render json: @home_blog, status: :created, location: @home_blog }
      else
        format.html { render action: "new" }
        format.json { render json: @home_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home_blogs/1
  # PUT /home_blogs/1.json
  def update
    @home_blog = HomeBlog.find(params[:id])

    respond_to do |format|
      if @home_blog.update_attributes(params[:home_blog])
        format.html { redirect_to @home_blog, notice: 'Home blog was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_blogs/1
  # DELETE /home_blogs/1.json
  def destroy
    @home_blog = HomeBlog.find(params[:id])
    @home_blog.destroy

    respond_to do |format|
      format.html { redirect_to home_blogs_url }
      format.json { head :no_content }
    end
  end
end
