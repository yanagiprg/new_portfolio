class AddImageToMusics < ActiveRecord::Migration[5.2]
  def change
    add_column :musics, :image, :string
  end
end
