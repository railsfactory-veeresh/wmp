class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.string :name
      t.string :comment
      t.integer :mobile

      t.timestamps
    end
  end
end
