class AddImageToMemes < ActiveRecord::Migration
  def up
    add_attachment :memes, :image
  end

  def down
    remove_attachment :memes, :image
  end
end
