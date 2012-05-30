class PythonBlogsController < ApplicationController
  # GET /python_blogs
  # GET /python_blogs.json
  def index
    @python_blogs = PythonBlog.all.reverse

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @python_blogs }
    end
  end

  # GET /python_blogs/1
  # GET /python_blogs/1.json
  def show
    @python_blog = PythonBlog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @python_blog }
    end
  end

  # GET /python_blogs/new
  # GET /python_blogs/new.json
  def new
    @python_blog = PythonBlog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @python_blog }
    end
  end

  # GET /python_blogs/1/edit
  def edit
    @python_blog = PythonBlog.find(params[:id])
  end

  # POST /python_blogs
  # POST /python_blogs.json
  def create
    @python_blog = PythonBlog.new(params[:python_blog])

    respond_to do |format|
      if @python_blog.save
        format.html { redirect_to @python_blog, notice: 'Python blog was successfully created.' }
        format.json { render json: @python_blog, status: :created, location: @python_blog }
      else
        format.html { render action: "new" }
        format.json { render json: @python_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /python_blogs/1
  # PUT /python_blogs/1.json
  def update
    @python_blog = PythonBlog.find(params[:id])

    respond_to do |format|
      if @python_blog.update_attributes(params[:python_blog])
        format.html { redirect_to @python_blog, notice: 'Python blog was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @python_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /python_blogs/1
  # DELETE /python_blogs/1.json
  def destroy
    @python_blog = PythonBlog.find(params[:id])
    @python_blog.destroy

    respond_to do |format|
      format.html { redirect_to python_blogs_url }
      format.json { head :no_content }
    end
  end
end
