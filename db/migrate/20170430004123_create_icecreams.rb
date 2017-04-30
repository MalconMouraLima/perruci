class CreateIcecreams < ActiveRecord::Migration[5.0]
  def change
    create_table :icecreams do |t|
      t.string :title
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
