class AddCaptionsToMeme < ActiveRecord::Migration
  def change
    add_column :memes, :low_caption, :text
    add_column :memes, :high_caption, :text
  end
end
