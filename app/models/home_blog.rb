class HomeBlog < ActiveRecord::Base
  attr_accessible :author_name, :header, :text_body, :created_at
end
