class CreateLinuxBlogs < ActiveRecord::Migration
  def change
    create_table :linux_blogs do |t|
      t.string :author_name
      t.string :header
      t.text :text_body

      t.timestamps
    end
  end
end
