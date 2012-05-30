class LinuxBlog < ActiveRecord::Base
  attr_accessible :author_name, :header, :text_body
end
