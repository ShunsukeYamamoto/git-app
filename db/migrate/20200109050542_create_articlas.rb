class CreateArticlas < ActiveRecord::Migration[5.2]
  def change
    create_table :articlas do |t|
      t.string :title
      t.string :author
      t.text :text

      t.timestamps
    end
  end
end
