class CreateMyLives < ActiveRecord::Migration
  def change
    create_table :my_lives do |t|
      t.text :about_me
      t.references :user, index: true

      t.timestamps
    end
  end
end
