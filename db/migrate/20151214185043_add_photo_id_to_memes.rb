class AddPhotoIdToMemes < ActiveRecord::Migration
  def change
    change_table :memes do |t|
      t.belongs_to :photo
    end
  end
end
